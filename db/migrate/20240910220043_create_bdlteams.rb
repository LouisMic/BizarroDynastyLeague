class CreateBdlteams < ActiveRecord::Migration[7.1]
  def change
    create_table :bdlteams do |t|
      t.references :user, null: false, foreign_key: true
      t.string :city
      t.string :nickname

      t.timestamps
    end
  end
end
