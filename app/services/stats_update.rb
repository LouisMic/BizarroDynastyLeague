require 'csv'

class StatsUpdate
  attr_accessor :week, :year, :files

  def initialize(week, year)
    @week = week
    @year = year
    @files = Statistic.all.pluck(:path).uniq.reject(&:nil?)
  end

  def update
    @files.each do |file|
      csv_file_path = "app/services/weekly_stats/#{file}"
      CSV.foreach(csv_file_path, headers: :first_row) do |row|
        player = Player.find_by(pff_id: row['player_id']) || Player.create!(pff_id: row['player_id'], name: row['player'], bdlteam: Bdlteam.find_by(city: "To Check"), nflteam: Nflteam.find_by(abbreviation: row['team_name']), position: Position.find_by(name: row['position']))
        player.update!(nflteam: Nflteam.find_by(abbreviation: row['team_name'])) if player.nflteam.abbreviation != row['team_name']
        stats = Statistic.where(path: file, position: player.position).pluck(:title).reject(&:nil?)
        stats.each do |stat|
          player_stat = PlayerStat.find_or_create_by(player: player, statistic: Statistic.find_by(title: stat, path: file, position: player.position), week: @week, year: @year)
          player_stat.value = row[stat]
          player_stat.save!
        end
        update_weekly_stats(file, @week, player, @year)
        compute_yards_per_target(player, @week, @year) if ["LB", "CB", "S"].include?(player.position.name)
        compute_percent_pressure(player, @week, @year) if ["T", "G", "C", "DI", "ED"].include?(player.position.name)
      end
    end
  end

  private

  def update_weekly_stats(file, week, player, year)
    case file
    when "passing_summary.csv"
      calculate_value("Attempts S", "Attempts", week, player, year, file)
    when "rushing_summary.csv"
      calculate_value("Rushing Yards S", "Rushing Yards", week, player, year, file)
    when "receiving_summary.csv"
      calculate_value("Receiving Yards S", "Receiving Yards", week, player, year, file)
    else
      calculate_value("Snaps S", "Snaps", week, player, year, file)
    end
  end

  def calculate_value(weekly_name, name, week, player, year, file)
    if PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: name, position: player.position), week: week, year: year).nil?
      puts "#{player.name} - #{player.position.name} does not have a stat for #{file}"
      return
    end
    ps = PlayerStat.find_or_create_by(player: player, statistic: Statistic.find_by(name: weekly_name, position: player.position), week: week, year: year)
    previous_week = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: name, position: player.position), week: week - 1, year: year)
    previous_total = previous_week ? previous_week.value : 0
    current_total = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: name, position: player.position), week: week, year: year).value
    ps.value = current_total - previous_total
    ps.save!
  end

  def compute_yards_per_target(player, week, year)
    ypt = PlayerStat.find_or_create_by(player: player, statistic: Statistic.find_by(name: "YPT", position: player.position), week: week, year: year)
    yards = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Yards allowed", position: player.position), week: week, year: year)
    targets = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Targets", position: player.position), week: week, year: year)
    ypt.value = yards && targets ? (yards.value / targets.value).round(2) : 0
    ypt.save!
  end

  def compute_percent_pressure(player, week, year)
    pressure = PlayerStat.find_or_create_by(player: player, statistic: Statistic.find_by(name: "Pressure %", position: player.position), week: week, year: year)
    if ["T", "G", "C"].include?(player.position.name)
      pressures = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Pressures allowed", position: player.position), week: week, year: year)
      snaps = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Snaps Pass", position: player.position), week: week, year: year)
    else
      pressures = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Pressures", position: player.position), week: week, year: year)
      snaps = PlayerStat.find_by(player: player, statistic: Statistic.find_by(name: "Rush Snaps", position: player.position), week: week, year: year)
    end
    pressure.value = pressures && snaps ? ((pressures.value / snaps.value)*100).round(2) : 0
    pressure.save!
  end
end
