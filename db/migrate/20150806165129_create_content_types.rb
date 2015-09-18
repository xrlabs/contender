class CreateContentTypes < ActiveRecord::Migration
  def change
    create_table :content_types do |t|
      t.references :entry, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
