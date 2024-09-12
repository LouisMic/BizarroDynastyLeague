class CreateNflteams < ActiveRecord::Migration[7.1]
  def change
    create_table :nflteams do |t|
      t.string :city
      t.string :nickname
      t.string :abbreviation

      t.timestamps
    end
  end
end
