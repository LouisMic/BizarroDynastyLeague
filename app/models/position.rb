class Position < ApplicationRecord
  KEY_STATS = {
    "QB" => ["Attempts S", "Passing Yards", "Passing Touchdowns", "Interceptions", "Completion Percentage", "ADOT", "Yards Per Attempt", "Rushing Yards"],
    "HB" => ["Rushing Yards S", "Receiving Yards S", "Rushing Yards", "Rushing Touchdowns", "Fumbles", "Yards per Carry", "Receiving Yards"],
    "WR" => ["Receiving Yards S", "Receiving Yards", "Receiving Touchdowns", "Receptions", "Catch Rate", "Yards per Reception", "Yards per Route Run", "ADOT"],
    "TE" => ["Receiving Yards S", "Receiving Yards", "Receiving Touchdowns", "Receptions", "Catch Rate", "Yards per Reception", "Yards per Route Run", "ADOT", "Run Blocking Grade"],
    "T" => ["Snaps S", "Snaps", "Run Blocking Grade", "Pass Blocking Grade", "Pressures allowed", "Sacks allowed", "Pressure %"],
    "G" => ["Snaps S", "Snaps", "Run Blocking Grade", "Pass Blocking Grade", "Pressures allowed", "Sacks allowed", "Pressure %"],
    "C" => ["Snaps S", "Snaps", "Run Blocking Grade", "Pass Blocking Grade", "Pressures allowed", "Sacks allowed", "Pressure %"],
    "DI" => ["Snaps S", "Snaps", "Grade Run Stop", "Run Stops", "Pressures", "Hits", "Sacks", "Pressure %"],
    "ED" => ["Snaps S", "Snaps", "Grade Run Stop", "Run Stops", "Pressures", "Hits", "Sacks", "Pressure %"],
    "LB" => ["Snaps S", "Snaps", "Grade Run Stop", "Run Stops", "Pressures", "Sacks", "Grade Pass Coverage", "YPT", "Yards allowed", "Interceptions", "Catch rate"],
    "CB" => ["Snaps S", "Snaps", "Grade Pass Coverage", "YPT", "Yards allowed", "Touchdown allowed", "Interceptions", "Catch rate"],
    "S" => ["Snaps S", "Snaps", "Grade Run Stop", "Run Stops", "Grade Pass Coverage", "YPT", "Yards allowed", "Touchdown allowed", "Interceptions", "Catch rate"],
  }

  def position_stats
    KEY_STATS[self.name].map { |stat| Statistic.find_by(name: stat, position: self) }
  end
end
