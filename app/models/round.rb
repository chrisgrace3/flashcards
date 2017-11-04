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

    def count_first_guess
    guesses = self.guesses.select {|guess| guess.count == 1}
    guesses.length
  end

  def count_total_guesses
    self.guesses.reduce(0) {|sum, guess| sum + guess.count }
  end

  def format_date
    Time.zone = 'Central Time (US & Canada)'
    self.created_at.in_time_zone
  end
end
