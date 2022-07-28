class AddEndDayToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :end_day, :integer
  end
end
