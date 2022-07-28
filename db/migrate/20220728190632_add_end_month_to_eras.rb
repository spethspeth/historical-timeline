class AddEndMonthToEras < ActiveRecord::Migration[6.1]
  def change
    add_column :eras, :end_month, :integer
  end
end
