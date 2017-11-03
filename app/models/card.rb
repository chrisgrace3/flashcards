class Card < ApplicationRecord
  belongs_to :deck
  belongs_to :correct_answer, class_name: 'PossibleAnswer'
  has_many :possible_answers
  has_many :guesses
end
