class CreateErasTimelines < ActiveRecord::Migration[6.1]
  def change
    create_table :eras_timelines do |t|
      t.references :era, null: false, foreign_key: true
      t.references :timeline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
