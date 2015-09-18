class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.references :content_type, index: true, foreign_key: true
      t.references :space, index: true, foreign_key: true
      t.string :name
      t.text :fields

      t.timestamps null: false
    end
  end
end
