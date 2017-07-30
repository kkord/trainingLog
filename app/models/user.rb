class User < ApplicationRecord

  has_many :entries

  scope :newest_first, lambda { order("position ASC") }
  scope :search, lambda { |query| where(["name LIKE ?", "%#{query}%"]) }

end
