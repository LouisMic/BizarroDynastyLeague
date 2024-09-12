class CreatePlayerStats < ActiveRecord::Migration[7.1]
  def change
    create_table :player_stats do |t|
      t.references :player, null: false, foreign_key: true
      t.references :statistic, null: false, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end
