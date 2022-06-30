class AddEndDayToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :end_day, :integer
  end
end
