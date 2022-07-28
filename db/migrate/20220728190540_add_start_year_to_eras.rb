class AddStartYearToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :start_year, :integer
  end
end
