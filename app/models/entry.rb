class Entry < ApplicationRecord

  belongs_to :user
  has_one :subject
  has_one :resource


  scope :newest_first, lambda { order("position ASC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }


end
