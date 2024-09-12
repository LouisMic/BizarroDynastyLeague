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
      end
    end
  end
end
