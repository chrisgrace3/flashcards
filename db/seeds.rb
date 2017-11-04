User.create!(first_name: "guest", last_name: "user", email: "guest@flashcards.com", password: "guest123")


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




# User.create!(first_name: "guest", last_name: "user", email: "guest@flashcards.com", password: "guest123")


# 10.times do
#   User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.safe_email, password: Faker::Internet.password(8, 12))
# end

#   Deck.create!(title: "Authentication and Authorization", creator_id: rand(1..10))
#   Deck.create!(title: "Javascript", creator_id: rand(1..10))
#   Deck.create!(title: "HTTP", creator_id: rand(1..10))
#   Deck.create!(title: "Sinatra", creator_id: rand(1..10))

#   Card.create!(question: "What is Authentication?", correct_answer_id: 3, deck_id: 1)

#   PossibleAnswer.create!(answer: "the same as authorization", card_id: 1)
#   PossibleAnswer.create!(answer: "permissions that are granted based on your identity", card_id: 1)
#   PossibleAnswer.create!(answer: "as exchange between the server and the client proving the users identity", card_id: 1)
#   PossibleAnswer.create!(answer: "logging in or registering", card_id: 1)


#   Card.create!(question: "Why do we need authentication?", correct_answer_id: 6, deck_id: 1)

#   PossibleAnswer.create!(answer: "It sounds cool", card_id: 2)
#   PossibleAnswer.create!(answer: "To know who is accessing what and when", card_id: 2)
#   PossibleAnswer.create!(answer: "To allow certain permissions to certain users", card_id: 2)
#   PossibleAnswer.create!(answer: "So that we don't need cookies", card_id: 2)


#   Card.create!(question: "What is authorization?", correct_answer_id: 9, deck_id: 1)

#   PossibleAnswer.create!(answer: "Permissions allowing or denying access to specific functions to certain users", card_id: 3)
#   PossibleAnswer.create!(answer: "the same as authentication", card_id: 3)
#   PossibleAnswer.create!(answer: "the process of verifying the users identity to the server", card_id: 3)
#   PossibleAnswer.create!(answer: "logging in or registering", card_id: 3)



#   Card.create!(question: "How do we authenticate a user?", correct_answer_id: 13, deck_id: 1)

#   PossibleAnswer.create!(answer: "by comparing what is in the database with what a user inputs", card_id: 4)
#   PossibleAnswer.create!(answer: "ask them who they are", card_id: 4)
#   PossibleAnswer.create!(answer: "just let them use the website wihtout logging in", card_id: 4)
#   PossibleAnswer.create!(answer: "ask them some questions.. they sound pretty legit", card_id: 4)


#   Card.create!(question: "What is the difference between authorization and authentication?", correct_answer_id: 19, deck_id: 1)

#   PossibleAnswer.create!(answer: "They are the same", card_id: 5)
#   PossibleAnswer.create!(answer: "authorization is who you are, authentication is what you have permission to do", card_id: 5)
#   PossibleAnswer.create!(answer: "authentication is who you are, authorization is what you have permission to do", card_id: 5)
#   PossibleAnswer.create!(answer: "there are no differences they just have to work together", card_id: 5)


#   Card.create!(question: "Why do we use authorization?", correct_answer_id: 24, deck_id: 1)

#   PossibleAnswer.create!(answer: "to make the UI more difficult than it has to be", card_id: 6)
#   PossibleAnswer.create!(answer: "to know who is using our site", card_id: 6)
#   PossibleAnswer.create!(answer: "because someone told us toldt was important", card_id: 6)
#   PossibleAnswer.create!(answer: "to protect our site and only give permissions to people that are allowed to have them", card_id: 6)


#   Card.create!(question: "It is enough to just and show/ hide buttons in an application?", correct_answer_id: 26, deck_id: 1)

#   PossibleAnswer.create!(answer: "true", card_id: 7)
#   PossibleAnswer.create!(answer: "false", card_id: 7)


#   Card.create!(question: "How do we fully secure an application?", correct_answer_id: 30, deck_id: 1)

#   PossibleAnswer.create!(answer: "Make the UI difficult to use", card_id: 8)
#   PossibleAnswer.create!(answer: "Don't worry about it, everything is fine...", card_id: 8)
#   PossibleAnswer.create!(answer: "by using authentication of our users", card_id: 8)
#   PossibleAnswer.create!(answer: "hiding/showing buttons, protecting gets/ inputs in the url, and hiding destructive routes", card_id: 8)
