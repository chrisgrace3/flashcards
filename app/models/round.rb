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

  def correct_on_first_try
    first_try = 0
    self.deck.cards.each do |card|
      num_guesses = card.guesses.where(round_id: self.id)
      if num_guesses.length == 1
        first_try += 1
      end
    end
    first_try
  end

  def formatted_date
    d = Date.parse(self.created_at.utc.to_s)
    d.strftime('%d %b %Y')
  end

end
