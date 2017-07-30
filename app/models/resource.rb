class Resource < ApplicationRecord

  belongs_to :subject

  scope :sorted, lambda { order("position ASC") }
  scope :newest_first, lambda { order("position ASC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }
end
