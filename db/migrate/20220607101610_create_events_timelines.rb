class CreateEventsTimelines < ActiveRecord::Migration[6.1]
  def change
    create_table :events_timelines do |t|
      t.references :event, null: false, foreign_key: true
      t.references :timeline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
