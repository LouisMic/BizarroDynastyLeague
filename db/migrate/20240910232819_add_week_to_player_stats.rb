class AddWeekToPlayerStats < ActiveRecord::Migration[7.1]
  def change
    add_column :player_stats, :week, :integer
  end
end
