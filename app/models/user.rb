class User < ApplicationRecord

  scope :newest_first, lambda { order("position ASC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

end
