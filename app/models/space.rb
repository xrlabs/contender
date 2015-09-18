class Space < ActiveRecord::Base
  has_many :content_types
  has_many :entries
end
