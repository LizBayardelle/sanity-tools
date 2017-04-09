class AddDefaultToArchived < ActiveRecord::Migration
  def change
  	change_column :recommendations, :archived, :boolean, default: false
  end
end
