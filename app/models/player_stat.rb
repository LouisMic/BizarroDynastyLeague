class PlayerStat < ApplicationRecord
  belongs_to :player
  belongs_to :statistic

  def stats
    "#{statistic.name}: #{value}"
  end
end
