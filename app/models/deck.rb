class Deck < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :cards
  has_many :rounds

  validates_uniqueness_of :title
end
