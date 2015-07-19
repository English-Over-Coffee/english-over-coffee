class RenameHometown < ActiveRecord::Migration
  def change
    rename_column :teachers, :home_town, :hometown
  end
end
