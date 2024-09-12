class AddTitleToStatistics < ActiveRecord::Migration[7.1]
  def change
    add_column :statistics, :title, :string
  end
end
