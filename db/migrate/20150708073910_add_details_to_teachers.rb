class AddDetailsToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :first_name, :string
    add_column :teachers, :last_name, :string
    add_column :teachers, :hometown, :string
    add_column :teachers, :education, :text
    add_column :teachers, :hobbies, :text
    add_column :teachers, :motto, :text
    add_column :teachers, :advice, :text
    add_column :teachers, :strengths, :text
    add_column :teachers, :arrived_in_country, :datetime
    add_column :teachers, :other_languages_spoken, :text
    add_column :teachers, :personal_message, :text
  end
end
