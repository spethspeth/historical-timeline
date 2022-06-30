class AddStartYearToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :start_year, :integer
  end
end
