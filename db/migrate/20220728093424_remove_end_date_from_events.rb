class RemoveEndDateFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :end_date, :date
  end
end
