class CreateStatistics < ActiveRecord::Migration[7.1]
  def change
    create_table :statistics do |t|
      t.string :name
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
