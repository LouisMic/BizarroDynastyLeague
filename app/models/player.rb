class Player < ApplicationRecord
  belongs_to :bdlteam
  belongs_to :nflteam
  belongs_to :position
  has_many :player_stats

  scope :to_check, -> { where(bdlteam: Bdlteam.find_by(city: "To Check")).reject(&:special_teams).sort_by(&:name)}
  scope :free_agents, -> { where(bdlteam: Bdlteam.find_by(city: "Free Agent"))}
  scope :by_position, ->(position) { where(position: position) }

  def bdlteam_name
    bdlteam.city
  end

  def special_teams
    position.group == 3
  end

  def snaps
    player_stats.select{ |ps| ["Snaps", "Passing Snaps", "Attempts"].include?(ps.statistic.name) && ps.year == 2024 }.pluck(:value).join.to_f
  end

  scope :sorted_by_stat, ->(stat_name) {
    joins(player_stats: :statistic)
      .where(player_stats: { week: 8, year: 2024 }, statistics: { name: stat_name })
      .order('player_stats.value DESC')
  }

  def irlteam
    nflteam.abbreviation
  end
end
