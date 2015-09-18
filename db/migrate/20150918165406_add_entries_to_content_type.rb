class AddEntriesToContentType < ActiveRecord::Migration
  def change
    add_column :content_types, :entries, :text
  end
end
