class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :tool_name
      t.text :description
      t.references :user, index: true, foreign_key: true
      t.boolean :archived

      t.timestamps null: false
    end
  end
end
