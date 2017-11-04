class Round < ApplicationRecord
  belongs_to :player, class_name: 'User'
  belongs_to :deck
  has_many :guesses

  def get_remaining_cards
    true_guesses = self.guesses.where(answered_correctly: true)
    finished_cards = true_guesses.map { |guess| guess.card }
    all_cards = self.deck.cards
    remaining_cards = all_cards - finished_cards
  end

  def draw_card
    remaining_cards = self.get_remaining_cards
    remaining_cards.sample
  end

  def game_finished?
    self.get_remaining_cards.length == 0
  end
end
