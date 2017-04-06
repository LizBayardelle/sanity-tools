class ChangeUserFields < ActiveRecord::Migration
  def change
    rename_column :users, :busy, :less_busy
    rename_column :users, :stressed, :less_stressed
    rename_column :users, :depressed, :happier
    rename_column :users, :anxious, :more_relaxed
    rename_column :users, :panicked, :less_panicked
    rename_column :users, :lethargic, :more_energetic
    rename_column :users, :worried, :less_worried
    rename_column :users, :indecisive, :organized
    rename_column :users, :other_feels, :other
  end
end
