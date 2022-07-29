class RemoveStartDateFromEras < ActiveRecord::Migration[6.1]
  def change
    remove_column :eras, :start_date, :date
  end
end
