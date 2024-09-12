class AddYearToPlayerStat < ActiveRecord::Migration[7.1]
  def change
    add_column :player_stats, :year, :integer
  end
end
