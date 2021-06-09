class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.integer :height
      t.integer :weight
      t.integer :goal
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
