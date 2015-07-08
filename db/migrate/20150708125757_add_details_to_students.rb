class AddDetailsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :photo, :string
    add_column :students, :home_town, :string
    add_column :students, :english_level, :string
    add_column :students, :special_requests, :text
  end
end
