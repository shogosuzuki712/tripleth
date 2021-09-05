class CreateDietMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :diet_menus do |t|
      t.string :title, nill: false
      t.integer :genre_id, null:false
      t.references :user,null: false, foreign_key: true
      t.timestamps
    end
  end
end
