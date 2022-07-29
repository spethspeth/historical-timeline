class RemoveEndDateFromEras < ActiveRecord::Migration[6.1]
  def change
    remove_column :eras, :end_date, :date
  end
end
