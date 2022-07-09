class AddEndYearToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :end_year, :integer
  end
end
