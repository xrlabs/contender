class RemoveEntryIdFromContentType < ActiveRecord::Migration
  def change
    remove_reference :content_types, :entry, index: true, foreign_key: true
  end
end
