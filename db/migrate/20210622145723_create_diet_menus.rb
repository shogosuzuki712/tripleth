class CreateDietMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :diet_menus do |t|

      t.timestamps
    end
  end
end
