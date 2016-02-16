require 'CSV'

def val(col_name)
  case col_name
  when "player"                then -1
  when "team"                  then 0
  when "age"                   then 1
  when "position"              then 2
  when "games_played"          then 3
  when "minutes_played"        then 4
  when "total_points"          then 5
  when "field_goals"           then 6
  when "field_goals_attempted" then 7
  when "free_throws"           then 8
  when "free_throws_attempted" then 9
  when "assists"               then 10
  when "rebounds"              then 11
  when "steals"                then 12
  when "blocks"                then 13
  when "turnovers"             then 14
  when "personal_fouls"        then 15
  else
    16
  end
end

Dir.glob("nba_season_*_before.csv").each do |fname|
  stats = CSV.read fname

  fname = fname.gsub /_before/, ''

  stats.reject!.with_index { |row, i| i != 0 && row[0] == "Rk" }
  stats = stats.transpose

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
  stats.sort! { |x, y| val(x[0]) <=> val(y[0]) }
  stats = stats.transpose

  # puts "#{fname}:"
  # stats[0].each_with_index do |row, i|
  #   puts i.to_s.rjust(3, " ") + ". #{row}"
  # end
  # puts

  CSV.open(fname, "w") do |f|
    stats.each { |row| f << row }
  end
end
