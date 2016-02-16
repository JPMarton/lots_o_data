require 'CSV'

# order for sorting columns
def val(col_name)
  case col_name
  when "player"                then 0
  when "age"                   then 1
  when "position"              then 2
  when "team"                  then 3
  when "played_whole_season"   then 4
  when "games_played"          then 5
  when "minutes_played"        then 6
  when "total_points"          then 7
  when "field_goals"           then 8
  when "field_goals_attempted" then 9
  when "free_throws"           then 10
  when "free_throws_attempted" then 11
  when "assists"               then 12
  when "rebounds"              then 13
  when "steals"                then 14
  when "blocks"                then 15
  when "turnovers"             then 16
  when "personal_fouls"        then 17
  else
    18
  end
end

Dir.glob("nba_season_*_before.csv").each do |fname|
  stats = CSV.read fname

  # change the output name
  fname = fname.gsub /_before/, ''

  # clean out the extra heading rows and transpose
  stats.reject!.with_index { |row, i| i != 0 && row[0] == "Rk" }
  stats = stats.transpose

  # rename wanted columns, remove unwanted (and transpose)
  stats.map! do |col|
    col[0] = case col[0]
    when "Player" then "player"
    when "Pos"    then "position"
    when "Age"    then "age"
    when "Tm"     then "team"
    when "G"      then "games_played"
    when "MP"     then "minutes_played"
    when "FG"     then "field_goals"
    when "FGA"    then "field_goals_attempted"
    when "FT"     then "free_throws"
    when "FTA"    then "free_throws_attempted"
    when "TRB"    then "rebounds"
    when "AST"    then "assists"
    when "STL"    then "steals"
    when "BLK"    then "blocks"
    when "TOV"    then "turnovers"
    when "PF"     then "personal_fouls"
    when "PTS"    then "total_points"
    else
      "-"
    end

    col
  end
  stats.reject! { |col| col[0] == "-" }
  stats = stats.transpose

  # add a new column for players in more than one team, and remove TOTs
  # (and transpose)
  stats.each_with_index do |row, i|
    curr_name = row[0]
    prev_name = stats[i-1][0]
    next_name = (i < stats.length-1) ? stats[i+1][0] : nil

    if i == 0
      row << "played_whole_season"
    elsif curr_name == prev_name || curr_name == next_name
      row << false
    else
      row << true
    end
  end
  stats.reject! { |row| row[3] == "TOT" }
  stats = stats.transpose

  # sort columns and transpose
  stats.sort! { |x, y| val(x[0]) <=> val(y[0]) }
  stats = stats.transpose

  # write out cleaned data
  CSV.open(fname, "w") do |f|
    stats.each { |row| f << row }
  end
end
