class CreateProcons < ActiveRecord::Migration
  def change
    create_table :procons do |t|
      t.string :name
      t.text :notes
      t.string :proarray
      t.string :conarray
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
