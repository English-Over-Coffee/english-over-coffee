class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :lesson_datetime
      t.string   :textbook_position
      t.references :teacher, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
