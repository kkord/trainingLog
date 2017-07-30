class Subject < ApplicationRecord

  has_many :resources

  scope :sorted, lambda { order("position ASC") }
  scope :newest_first, lambda { order("position ASC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }


end
