class CreateInTakes < ActiveRecord::Migration[6.0]
  def change
    create_table :in_takes do |t|

      t.timestamps
      t.datetime :start_time, null: false
      t.integer :food_category_id, null: false
      t.integer :food_id, null: false
      t.references :user, foreign_key: true, null: false
    end
  end
end
