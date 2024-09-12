class Position < ApplicationRecord
  def position_stats
    Statistic.where(position: self)
  end
end
