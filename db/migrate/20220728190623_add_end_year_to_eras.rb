class AddEndYearToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :end_year, :integer
  end
end
