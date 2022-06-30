class AddEndMonthToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :end_month, :integer
  end
end
