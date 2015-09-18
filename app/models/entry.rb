class Entry < ActiveRecord::Base
  belongs_to :content_type
  belongs_to :space

  # CHANGE THIS LATER! No real name attribute! Check the comment below.
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }

  # This is ok
  validates :fields, presence: true

  # TODO:
  # Write own validation that checks for the self-set primary key.
  # The primary key is not known to the DB or to the Vanilla Rails, it's inside of the ContentType's fields JSON Tree.
  # Right now, we use a faux name attribute simply called "name"
end
