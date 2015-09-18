class Space < ActiveRecord::Base
  has_many :content_types
  has_many :entries

  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
end
