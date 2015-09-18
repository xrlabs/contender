class Entry < ActiveRecord::Base
  belongs_to :content_type
  belongs_to :space
end
