require 'csv'

# Initialize Users
# tl = User.create!(email: 'tl@bdl.com', password: 'password', password_confirmation: 'password')
# ir = User.create!(email: 'ir@bdl.com', password: 'password', password_confirmation: 'password')
# blue = User.create!(email: 'blue@bdl.com', password: 'password', password_confirmation: 'password')
# rags = User.create!(email: 'rags@bdl.com', password: 'password', password_confirmation: 'password')
# rack = User.create!(email: 'rack@bdl.com', password: 'password', password_confirmation: 'password')
# pete = User.create!(email: 'pete@bdl.com', password: 'password', password_confirmation: 'password')
# lukic = User.create!(email: 'lukic@bdl.com', password: 'password', password_confirmation: 'password')
# bcb = User.create!(email: 'bcb@bdl.com', password: 'password', password_confirmation: 'password')
# ted = User.create!(email: 'ted@bdl.com', password: 'password', password_confirmation: 'password')
# sira = User.create!(email: 'sira@bdl.com', password: 'password', password_confirmation: 'password')
# scoundrel = User.create!(email: 'scoundrel@bdl.com', password: 'password', password_confirmation: 'password')
# rt = User.create!(email: 'rt@bdl.com', password: 'password', password_confirmation: 'password')
# md4l = User.create!(email: 'md4l@bdl.com', password: 'password', password_confirmation: 'password')
# pr = User.create!(email: 'pr@bdl.com', password: 'password', password_confirmation: 'password')
# rg = User.create!(email: 'rg@bdl.com', password: 'password', password_confirmation: 'password')
# pickle = User.create!(email: 'pickle@bdl.com', password: 'password', password_confirmation: 'password')
# empty = User.create!(email: 'empty@bdl.com', password: 'password', password_confirmation: 'password')
# puts "Created #{User.count} users (should be 17)"

# Initialize BDL Teams
# Bdlteam.create!(city: 'Cwmfelinfach', nickname: 'Cwmfelinfach', user: tl)
# Bdlteam.create!(city: 'Las Vegas', nickname: 'Bangers', user: ir)
# Bdlteam.create!(city: 'Cancun', nickname: 'Kaiju', user: blue)
# Bdlteam.create!(city: 'Berlin', nickname: 'Blitzkrieg', user: rags)
# Bdlteam.create!(city: 'Lancaster', nickname: 'Werewolves', user: rack)
# Bdlteam.create!(city: 'Raleigh', nickname: 'Firebirds', user: pete)
# Bdlteam.create!(city: 'New Orleans', nickname: 'Jazz', user: lukic)
# Bdlteam.create!(city: 'Rome', nickname: 'Eternals', user: bcb)
# Bdlteam.create!(city: 'Quebec', nickname: 'Nordiques', user: ted)
# Bdlteam.create!(city: 'Svalbard', nickname: 'Miners', user: sira)
# Bdlteam.create!(city: 'Anchorage', nickname: 'Aliens', user: scoundrel)
# Bdlteam.create!(city: 'Ivory Coast', nickname: 'Black Rhinos', user: rt)
# Bdlteam.create!(city: 'Cuba', nickname: 'Smugglers', user: md4l)
# Bdlteam.create!(city: 'Hungary', nickname: 'Hippos', user: pr)
# Bdlteam.create!(city: 'Akureyri', nickname: 'Huldufolk', user: rg)
# Bdlteam.create!(city: 'Greenland', nickname: 'Polar Bears', user: pickle)
# Bdlteam.create!(city: 'Free Agent', nickname: '', user: empty)
# Bdlteam.create!(city: 'Retired', nickname: '', user: empty)
# # Bdlteam.create!(city: 'To Check', nickname: '', user: empty)
# puts "Created #{Bdlteam.count} BDL teams (should be 18)"

# Initialize Positions
# Position.create!(name: 'QB', fa_grouping: 1, group: 1)
# Position.create!(name: 'HB', fa_grouping: 2, group: 1)
# Position.create!(name: 'FB', fa_grouping: 2, group: 1)
# Position.create!(name: 'WR', fa_grouping: 2, group: 1)
# Position.create!(name: 'TE', fa_grouping: 2, group: 1)
# Position.create!(name: 'T', fa_grouping: 1, group: 1)
# Position.create!(name: 'G', fa_grouping: 1, group: 1)
# Position.create!(name: 'C', fa_grouping: 1, group: 1)
# Position.create!(name: 'ED', fa_grouping: 3, group: 2)
# Position.create!(name: 'DI', fa_grouping: 3, group: 2)
# Position.create!(name: 'LB', fa_grouping: 3, group: 2)
# Position.create!(name: 'CB', fa_grouping: 3, group: 2)
# Position.create!(name: 'S', fa_grouping: 3, group: 2)
# Position.create!(name: 'K', fa_grouping: 4, group: 3)
# Position.create!(name: 'P', fa_grouping: 4, group: 3)
# Position.create!(name: 'LS', fa_grouping: 4, group: 3)
# puts "Created #{Position.count} positions (should be 13)"

# Initialize NFL Teams
# Nflteam.destroy_all
# csv_file_path = 'db/seeds/nflteams.csv'
# CSV.foreach(csv_file_path, headers: :first_row) do |row|
#   Nflteam.create!(
#     abbreviation: row['Abbreviation'],
#     city: row['City'],
#     nickname: row['Team']
#   )
# end
# fa = Nflteam.create!(abbreviation: 'FA', city: 'Free Agent', nickname: '')
# puts "Created #{Nflteam.count} NFL teams (should be 33) and first city is #{Nflteam.first.city}"

# Initialize Players
# Player.destroy_all
# file_path = 'db/seeds/players.csv'
# CSV.foreach(file_path, headers: :first_row) do |row|
#   Player.create!(
#     name: row['Player'],
#     pff_id: row['Player_id'],
#     bdlteam: Bdlteam.find_by(city: row['Team']),
#     nflteam: Nflteam.find_by(abbreviation: 'FA'),
#     position: Position.find_by(name: row['Pos'])
#   )
# end
# puts "Created #{Player.count} players (should be 1880)"

# Initialize Statistics
# Statistic.destroy_all

  # passing stats
  # Statistic.create!(path: "passing_summary.csv", title: "attempts", name: 'Attempts', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "yards", name: 'Passing Yards', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "touchdowns", name: 'Passing Touchdowns', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "interceptions", name: 'Interceptions', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "completion_percent", name: 'Completion Percentage', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "avg_depth_of_target", name: 'ADOT', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "avg_time_to_throw", name: 'Average Time to Throw', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "pressure_to_sack_rate", name: 'Pressure to sack Percentage', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "ypa", name: 'Yards Per Attempt', position: Position.find_by(name: 'QB'))
  # Statistic.create!(path: "passing_summary.csv", title: "grades_pass", name: 'Passing Grade', position: Position.find_by(name: 'QB'))

  # rushing stats
#   Statistic.create!(path: "rushing_summary.csv", title: "attempts", name: 'Attempts', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "attempts", name: 'Attempts', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "avoided_tackles", name: 'Missed Tackles', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "avoided_tackles", name: 'Missed Tackles', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "avoided_tackles", name: 'Missed Tackles', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "avoided_tackles", name: 'Missed Tackles', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "avoided_tackles", name: 'Missed Tackles', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yards", name: 'Rushing Yards', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "touchdowns", name: 'Rushing Touchdowns', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "fumbles", name: 'Fumbles', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "ypa", name: 'Yards per Carry', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yco_attempt", name: 'Yards after Contact per attempt', position: Position.find_by(name: 'QB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yards", name: 'Rushing Yards', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "touchdowns", name: 'Rushing Touchdowns', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "fumbles", name: 'Fumbles', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "ypa", name: 'Yards per Carry', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yco_attempt", name: 'Yards after Contact per attempt', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yards", name: 'Rushing Yards', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "touchdowns", name: 'Rushing Touchdowns', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "fumbles", name: 'Fumbles', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "ypa", name: 'Yards per Carry', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yco_attempt", name: 'Yards after Contact per attempt', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yards", name: 'Rushing Yards', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "touchdowns", name: 'Rushing Touchdowns', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "fumbles", name: 'Fumbles', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "ypa", name: 'Yards per Carry', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yco_attempt", name: 'Yards after Contact per attempt', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yards", name: 'Rushing Yards', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "rushing_summary.csv", title: "touchdowns", name: 'Rushing Touchdowns', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "rushing_summary.csv", title: "fumbles", name: 'Fumbles', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "rushing_summary.csv", title: "ypa", name: 'Yards per Carry', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "rushing_summary.csv", title: "yco_attempt", name: 'Yards after Contact per attempt', position: Position.find_by(name: 'TE'))

#   # receiving stats
#   Statistic.create!(path: "receiving_summary.csv", title: "pass_plays", name: 'Passing Snaps', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "pass_plays", name: 'Passing Snaps', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards", name: 'Receiving Yards', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "touchdowns", name: 'Receiving Touchdowns', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "receptions", name: 'Receptions', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "caught_percent", name: 'Catch Rate', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_per_reception", name: 'Yards per Reception', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yprr", name: 'Yards per Route Run', position: Position.find_by(name: 'WR'))
#   Statistic.create!(name: 'Yards per Target', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_after_catch_per_reception", name: 'Yards after Catch per Reception', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "avg_depth_of_target", name: 'ADOT', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_catch_rate", name: 'Contested catch rate', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_receptions", name: 'Contested catches', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "drop_rate", name: 'Drops rate', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "", name: 'Slot Percentage', position: Position.find_by(name: 'WR'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards", name: 'Receiving Yards', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "touchdowns", name: 'Receiving Touchdowns', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "receptions", name: 'Receptions', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "caught_percent", name: 'Catch Rate', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_per_reception", name: 'Yards per Reception', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yprr", name: 'Yards per Route Run', position: Position.find_by(name: 'HB'))
#   Statistic.create!(name: 'Yards per Target', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_after_catch_per_reception", name: 'Yards after Catch per Reception', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "avg_depth_of_target", name: 'ADOT', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_catch_rate", name: 'Contested catch rate', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_receptions", name: 'Contested catches', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "drop_rate", name: 'Drops rate', position: Position.find_by(name: 'HB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards", name: 'Receiving Yards', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "touchdowns", name: 'Receiving Touchdowns', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "receptions", name: 'Receptions', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "caught_percent", name: 'Catch Rate', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_per_reception", name: 'Yards per Reception', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yprr", name: 'Yards per Route Run', position: Position.find_by(name: 'TE'))
#   Statistic.create!(name: 'Yards per Target', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_after_catch_per_reception", name: 'Yards after Catch per Reception', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "avg_depth_of_target", name: 'ADOT', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_catch_rate", name: 'Contested catch rate', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_receptions", name: 'Contested catches', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "drop_rate", name: 'Drops rate', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards", name: 'Receiving Yards', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "touchdowns", name: 'Receiving Touchdowns', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "receptions", name: 'Receptions', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "caught_percent", name: 'Catch Rate', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_per_reception", name: 'Yards per Reception', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yprr", name: 'Yards per Route Run', position: Position.find_by(name: 'FB'))
#   Statistic.create!(name: 'Yards per Target', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "yards_after_catch_per_reception", name: 'Yards after Catch per Reception', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "avg_depth_of_target", name: 'ADOT', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_catch_rate", name: 'Contested catch rate', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "contested_receptions", name: 'Contested catches', position: Position.find_by(name: 'FB'))
#   Statistic.create!(path: "receiving_summary.csv", title: "drop_rate", name: 'Drops rate', position: Position.find_by(name: 'FB'))

#   # blocking stats
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_pass_block", name: 'Pass Blocking Grade', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_pass_block", name: 'Pass Blocking Grade', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_pass_block", name: 'Pass Blocking Grade', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "snap_counts_offense", name: 'Snaps', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "snap_counts_offense", name: 'Snaps', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "snap_counts_offense", name: 'Snaps', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_run_block", name: 'Run Blocking Grade', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_run_block", name: 'Run Blocking Grade', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_run_block", name: 'Run Blocking Grade', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "grades_run_block", name: 'Run Blocking Grade', position: Position.find_by(name: 'TE'))
#   Statistic.create!(path: "offense_blocking.csv", title: "pressures_allowed", name: 'Pressures allowed', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "pressures_allowed", name: 'Pressures allowed', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "pressures_allowed", name: 'Pressures allowed', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hits_allowed", name: 'Hits allowed', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hits_allowed", name: 'Hits allowed', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hits_allowed", name: 'Hits allowed', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hurries_allowed", name: 'Hurries allowed', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hurries_allowed", name: 'Hurries allowed', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "hurries_allowed", name: 'Hurries allowed', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "sacks_allowed", name: 'Sacks allowed', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "sacks_allowed", name: 'Sacks allowed', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "sacks_allowed", name: 'Sacks allowed', position: Position.find_by(name: 'C'))
#   Statistic.create!(path: "offense_blocking.csv", title: "penalties", name: 'Penalties', position: Position.find_by(name: 'T'))
#   Statistic.create!(path: "offense_blocking.csv", title: "penalties", name: 'Penalties', position: Position.find_by(name: 'G'))
#   Statistic.create!(path: "offense_blocking.csv", title: "penalties", name: 'Penalties', position: Position.find_by(name: 'C'))

#   # defensive stats
# Statistic.create!(path: "defense_summary.csv", title: "snap_counts_defense", name: 'Snaps', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "snap_counts_defense", name: 'Snaps', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "snap_counts_defense", name: 'Snaps', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "snap_counts_defense", name: 'Snaps', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "snap_counts_defense", name: 'Snaps', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "total_pressures", name: 'Pressures', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "hits", name: 'Hits', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "hurries", name: 'Hurries', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "sacks", name: 'Sacks', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "stops", name: 'Run Stops', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "forced_fumbles", name: 'Forced Fumbles', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_run_defense", name: 'Grade Run Stop', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "tackles_for_loss", name: 'Tackles for loss', position: Position.find_by(name: 'ED'))
# Statistic.create!(path: "defense_summary.csv", title: "total_pressures", name: 'Pressures', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "hits", name: 'Hits', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "hurries", name: 'Hurries', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "sacks", name: 'Sacks', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "stops", name: 'Run Stops', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "forced_fumbles", name: 'Forced Fumbles', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_run_defense", name: 'Grade Run Stop', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "tackles_for_loss", name: 'Tackles for loss', position: Position.find_by(name: 'DI'))
# Statistic.create!(path: "defense_summary.csv", title: "total_pressures", name: 'Pressures', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "hits", name: 'Hits', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "hurries", name: 'Hurries', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "sacks", name: 'Sacks', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "stops", name: 'Run Stops', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "forced_fumbles", name: 'Forced Fumbles', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_run_defense", name: 'Grade Run Stop', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "tackles_for_loss", name: 'Tackles for loss', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "missed_tackle_rate", name: 'Missed Tackle Rate', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_coverage_defense", name: 'Grade Pass Coverage', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "catch_rate", name: 'Catch rate', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "interceptions", name: 'Interceptions', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "targets", name: 'Targets', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "touchdowns", name: 'Touchdown allowed', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "yards", name: 'Yards allowed', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "yards_per_reception", name: 'Yards per reception', position: Position.find_by(name: 'LB'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_coverage_defense", name: 'Grade Pass Coverage', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "catch_rate", name: 'Catch rate', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "interceptions", name: 'Interceptions', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "targets", name: 'Targets', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "touchdowns", name: 'Touchdown allowed', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "yards", name: 'Yards allowed', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "yards_per_reception", name: 'Yards per reception', position: Position.find_by(name: 'CB'))
# Statistic.create!(path: "defense_summary.csv", title: "stops", name: 'Run Stops', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "forced_fumbles", name: 'Forced Fumbles', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_run_defense", name: 'Grade Run Stop', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "tackles_for_loss", name: 'Tackles for loss', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "missed_tackle_rate", name: 'Missed Tackle Rate', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "grades_coverage_defense", name: 'Grade Pass Coverage', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "catch_rate", name: 'Catch rate', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "interceptions", name: 'Interceptions', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "targets", name: 'Targets', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "touchdowns", name: 'Touchdown allowed', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "yards", name: 'Yards allowed', position: Position.find_by(name: 'S'))
# Statistic.create!(path: "defense_summary.csv", title: "yards_per_reception", name: 'Yards per reception', position: Position.find_by(name: 'S'))

# init = StatsUpdate.new(18, 2023)
# # puts init.files
# init.update
# puts "Created #{PlayerStat.count} player statistics. There are #{Player.count} players in the database."

# 2024 players stats

# week = 1
# PlayerStat.where("week < ? AND year = ?", week - 1, 2024).destroy_all if week > 2
# week1 = StatsUpdate.new(week, 2024)
# week1.update
# puts "Created #{PlayerStat.count} player statistics. There are #{Player.count} players in the database."
# puts Player.find_by(name: "Patrick Mahomes").bdlteam
# puts Player.find_by(name: "Patrick Mahomes").player_stats.where(year: 2024, week: week).map(&:stats)
