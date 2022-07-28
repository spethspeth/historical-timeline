class AddStartDayToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :start_day, :integer
  end
end
