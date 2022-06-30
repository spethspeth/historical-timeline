class AddStartMonthToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_month, :integer
  end
end
