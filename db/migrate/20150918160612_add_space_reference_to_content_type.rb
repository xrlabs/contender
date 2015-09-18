class AddSpaceReferenceToContentType < ActiveRecord::Migration
  def change
    add_reference :content_types, :space, index: true, foreign_key: true
  end
end
