class Guess < ApplicationRecord
  belongs_to :round
  belongs_to :card
  has_one :player, through: :round
end
