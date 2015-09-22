class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.references :teacher, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end