class CreatePositions < ActiveRecord::Migration[7.1]
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :fa_grouping
      t.integer :group

      t.timestamps
    end
  end
end
