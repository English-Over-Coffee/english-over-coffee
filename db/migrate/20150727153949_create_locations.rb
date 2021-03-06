class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :homepage
      t.string :street_address
      t.string :ward
      t.string :prefecture
      t.string :city
      t.string :post_code
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :locations, [:teacher_id, :created_at]
  end
end
