class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :name
      t.string :subtitle
      t.string :description
      t.boolean :less_busy, default: false
      t.boolean :less_stressed, default: false
      t.boolean :happier, default: false
      t.boolean :more_relaxed, default: false
      t.boolean :less_panicked, default: false
      t.boolean :more_motivated, default: false
      t.boolean :less_worried, default: false
      t.boolean :more_organized, default: false
      t.boolean :other, default: false
      t.boolean :subscribers_only, default: false
      t.string :model_name

      t.timestamps null: false
    end
  end
end
