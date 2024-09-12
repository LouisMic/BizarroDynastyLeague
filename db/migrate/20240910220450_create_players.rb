class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :name
      t.references :bdlteam, null: false, foreign_key: true
      t.references :nflteam, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true
      t.integer :salary
      t.integer :contract_years
      t.integer :xp_years
      t.integer :pff_id

      t.timestamps
    end
  end
end
