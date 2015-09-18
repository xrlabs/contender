class RenameContentTypeEntriesToFields < ActiveRecord::Migration
  def change
    remove_column :content_types, :entries

    add_column    :content_types, :fields, :text
  end
end