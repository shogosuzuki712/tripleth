class CreateCharas < ActiveRecord::Migration[6.0]
  def change
    create_table :charas do |t|
      t.text :text, null: false
      t.integer :area, null: false
      t.integer :gender, null: false
      t.integer :age, null: false
      t.integer :job_style, null: false
      t.integer :exercise_style, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
