class CreateEras < ActiveRecord::Migration[6.1]
  def change
    create_table :eras do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.date :end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
