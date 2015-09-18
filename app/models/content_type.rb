class ContentType < ActiveRecord::Base
    belongs_to :space
    has_many :entry

    validates :name, presence: true, length: { maximum: 64 }, uniqueness: { case_sensitive: false }
    validates :space_id, presence: true
end
