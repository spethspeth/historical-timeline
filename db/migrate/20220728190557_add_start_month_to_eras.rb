class AddStartMonthToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :start_month, :integer
  end
end
