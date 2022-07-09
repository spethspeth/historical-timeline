class AddStartDayToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_day, :integer
  end
end
