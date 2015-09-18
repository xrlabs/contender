class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.references :content_type, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
