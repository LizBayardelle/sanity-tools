class RenameModelName < ActiveRecord::Migration
  def change
  	rename_column :tools, :model_name, :find_by_name
  end
end
