class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.text :comment
      t.integer :ratting
      t.references :user, null: false, foreign_key: true
      t.references :timeline

      t.timestamps
    end
  end
end
