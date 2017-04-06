class FurtherRefinement < ActiveRecord::Migration
  def change
  	    rename_column :users, :more_energetic, :more_motivated
    	rename_column :users, :organized, :more_organized
  end
end
