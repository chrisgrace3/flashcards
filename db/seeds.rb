

10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.safe_email, password: Faker::Internet.password(8, 12))
end

5.times do
  Deck.create!(title: Faker::ProgrammingLanguage.name, creator_id: rand(1..10))
end

Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 1, deck_id: 1)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 3, deck_id: 1)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 5, deck_id: 2)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 7, deck_id: 2)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 9, deck_id: 3)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 11, deck_id: 3)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 13, deck_id: 4)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 15, deck_id: 4)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 17, deck_id: 5)
Card.create!(question: Faker::BackToTheFuture.quote, correct_answer_id: 19, deck_id: 5)

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 1)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 2)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 3)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 4)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 5)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 6)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 7)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 8)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 9)
end

2.times do
  PossibleAnswer.create!(answer: Faker::BackToTheFuture.quote, card_id: 10)
end

Round.create!(player_id: 1, deck_id: 1)

Guess.create!(round_id: 1, card_id: 1, answered_correctly: false)
Guess.create!(round_id: 1, card_id: 1, answered_correctly: true)
Guess.create!(round_id: 1, card_id: 2, answered_correctly: true)
