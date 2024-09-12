class Player < ApplicationRecord
  belongs_to :bdlteam
  belongs_to :nflteam
  belongs_to :position
  has_many :player_stats

  scope :to_check, -> { where(bdlteam: Bdlteam.find_by(city: "To Check")).reject(&:special_teams).sort_by(&:name)}
  scope :free_agents, -> { where(bdlteam: Bdlteam.find_by(city: "Free Agent")).reject(&:special_teams).sort_by(&:name)}

  def bdlteam_name
    bdlteam.city
  end

  def special_teams
    position.group == 3
  end

  def snaps
    player_stats.select{ |ps| ["Snaps", "Passing Snaps", "Attempts"].include?(ps.statistic.name) && ps.year == 2024 }.pluck(:value).join.to_f
  end

  def stat(stat)
    player_stats.select{ |ps| ps.statistic.name == stat && ps.year == 2024 }.pluck(:value).join.to_f
  end
end
