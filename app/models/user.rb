require 'bcrypt'

class User < ApplicationRecord
  include BCrypt

  has_many :decks, foreign_key: :creator_id
  has_many :rounds, foreign_key: :player_id
  has_many :guesses, through: :rounds

  # validates :full_name, :username, :email, presence: true
  validate :validate_password
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(plain_text_password)
    @raw_password = plain_text_password
    @password = Password.create(plain_text_password)
    self.hashed_password = @password
  end

  def authenticate(plain_text_password)
    self.password == plain_text_password
  end

  def validate_password
    if @raw_password.length == 0
      errors.add(:password, "is required")
    elsif
      @raw_password.length < 6
      errors.add(:password, "must be at least 8 characters")
    end
  end


end
