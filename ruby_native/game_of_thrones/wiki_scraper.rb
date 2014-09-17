require 'facets/string/titlecase'
require 'securerandom'
require 'mechanize'
require 'json'
require 'pry'

module GameOfThrones
  class WikiScraper
    attr_reader :agent
    attr_accessor :current_region

    HOME_PAGE   = "http://awoiaf.westeros.org"
    HOUSES_PATH = "/index.php/Houses_of_Westeros"
    LOG_FILE_PREFIX = './log_'

    @@log_number = 0
    @@log_indent = 0
    @@char_num   = 0

    def write_to_log_file(name, content)
      File.write(LOG_FILE_PREFIX + name + '.json', content.to_json)
    end

    def log(message, indent=0, one_line=false)
      if one_line
        indentation = "> " * (@@log_indent+indent)
        puts "[#{@@log_number.to_s.rjust(3, "0")}] #{indentation}#{message}..."
      elsif indent > 0
        indentation = "> " * @@log_indent
        @@log_indent += indent
        puts "[#{@@log_number.to_s.rjust(3, "0")}] #{indentation}#{message}..."
      else
        @@log_indent += indent
        indentation = "> " * @@log_indent
        puts "[#{@@log_number.to_s.rjust(3, "0")}] #{indentation}#{message}..."
      end
      @@log_number += 1
    end

    def initialize
      log "Creating new user agent"
      @agent  = Mechanize.new { |agent| agent.user_agent_alias = 'Mac Safari' }
      @current_region = {}
      true
    end

    def get(path)
      log "Downloading '#{HOME_PAGE + path}'"
      begin
        agent.get(HOME_PAGE + path)
      rescue Mechanize::ResponseCodeError => e
        log "!!!! Status code error: #{e.to_s.split(' ')[0]}. Continuing"
        return false
      end
    end

    def houses_page_navtables(houses_page)
      houses_page.search("table.navbox table")
    end

    def get_title_link_from(nav_table)
      nav_table.search("th").children[1].search("a")
    end

    def set_current_region_from(nav_table)
      title_link = get_title_link_from(nav_table)
      self.current_region = {
        name: title_link.text.titlecase,
        link: title_link.attribute("href").value,
        crest: nav_table.search("tr")[2].search("img").attribute("src").value
      }
    end

    def for_each_house_list_in(nav_table, &block)
      log "Moving to next nav table in house page"
      nav_table.search("tr").each &block
    end

    def cells_in(row)
      row.search("td")
    end

    def type_of(house_list)
      cells_in(house_list)[0].text
    end

    def is_a_valid(house_list)
      cells_in(house_list).length > 1
    end

    def for_each_house_in(house_list, &block)
      log "Iterating over nav table for #{current_region[:name]}"
      cells_in(house_list)[1].search("a").each &block
    end

    def name_of(house)
      house.attribute("title").value
    end

    def link_to(house)
      house.attribute("href").value
    end

    def get_houses_lists
      log "Building houses...", 1
      houses_page = get(HOUSES_PATH)
      return false unless houses_page
      houses_list = []
      houses_page_navtables(houses_page).each do |nav_table|
        set_current_region_from nav_table

        for_each_house_list_in nav_table do |house_list|
          if is_a_valid house_list
            for_each_house_in house_list do |house|
              houses_list << {
                id:              SecureRandom.hex,
                name:            name_of(house),
                house_rel_link:  link_to(house),
                type:            type_of(house_list),
                region:          current_region[:name],
                region_rel_link: current_region[:link],
                region_crest:    current_region[:crest]
              }
            end
          end
        end
      end
      log "Houses built...", -1
      write_to_log_file('houses', houses_list)
      houses_list
    end

    def houses
      @houses ||= get_houses_lists
    end

    def add_current_members_from(house_data, to_list)
      house = get(house_data[:link])
      return false unless house
      current_members_node_text = house.at("h2>span:contains('third century')")
      unless current_members_node_text.nil?
        @current_node = current_members_node_text.parent
        while collect_next_element_into(to_list, house_data[:id]); end
      end
    end

    def for_each_house(&block)
      houses.sort_by {|h| h[:name]}.map {|h| {link: h[:house_rel_link], id: h[:id]}}.each(&block)
    end

    def raw_characters
      @raw_charcters ||= get_character_list
    end

    def characters
      log "Cleaning characters...", 1
      clean_characters = raw_characters
      clean_characters.map! do |character|
        token = character[:char] =~ /\:/ ? ': ' : ', '
        {name: character[:char].split(token)[0], style: character[:char].split(token)[1], house: character[:house]}
      end
      log "Characters cleaned...", 1
      write_to_log_file('characters', raw_characters)
    end

    def get_character_list
      log "Building characters...", 1
      to_list = []
      # @max = 25            # remove!
      for_each_house do |house|
        add_current_members_from house, to_list
        # @max -= 1          # remove!
        # break if @max < 1 # remove!
      end

      raw_characters = convert_list_to_characters(to_list)

      log "Characters built...", -1
      write_to_log_file('characters', raw_characters)
      raw_characters
    end

    def convert_list_to_characters(list)
      raw_list = list.flatten.map do |character|
        {char: character[:item].text.strip, house: character[:house]}
      end

      # log
      # raw_list

      # hashtagnospoilers
      no_spoilers(raw_list).compact.uniq
    end

    def no_spoilers(list)
      raw_characters = list.map do |character|
        character[:char] = character[:char].gsub(/({|})/,'').split('.')[0]
        if character[:char] !~ /no member/i
          character
        else
          nil
        end
      end
    end

    def collect_next_element_into(list, house_id)
      @current_node = @current_node.next
      return false if @current_node.nil? || @current_node.name =~ /(h.|div)/
      if @current_node.name =~ /(ul|ol|dl)/
        lis = @current_node.search("li")
        log "#{lis.length} new characters found (#{@@char_num += lis.length} total)", 1, true
        list << lis.map{|li| {item: li, house: house_id}}
        # list.flatten
      end
      true
    end

  end
end

scrape = GameOfThrones::WikiScraper.new
scrape.characters
