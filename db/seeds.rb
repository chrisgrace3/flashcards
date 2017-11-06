User.create!(first_name: "guest", last_name: "user", email: "guest@flashcards.com", password: "guest123")


10.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.safe_email, password: Faker::Internet.password(8, 12))
end


  Deck.create!(title: "Authentication and Authorization", creator_id: rand(1..10))
  Deck.create!(title: "Javascript", creator_id: rand(1..10))
  Deck.create!(title: "HTTP", creator_id: rand(1..10))
  Deck.create!(title: "jQuery/ AJAX", creator_id: rand(1..10))

  # start authentication deck?
  Card.create!(question: "What is Authentication?", correct_answer_id: 3, deck_id: 1)

  PossibleAnswer.create!(answer: "the same as authorization", card_id: 1)
  PossibleAnswer.create!(answer: "permissions that are granted based on your identity"
  , card_id: 1)
  PossibleAnswer.create!(answer: "as exchange between the server and the client proving the users identity", card_id: 1)
  PossibleAnswer.create!(answer: "logging in or registering", card_id: 1)


  Card.create!(question: "Why do we need authentication?", correct_answer_id: 6, deck_id: 1)

  PossibleAnswer.create!(answer: "It sounds cool", card_id: 2)
  PossibleAnswer.create!(answer: "To know who is accessing what and when"
  , card_id: 2)
  PossibleAnswer.create!(answer: "To allow certain permissions to certain users", card_id: 2)
  PossibleAnswer.create!(answer: "So that we don't need cookies", card_id: 2)


  Card.create!(question: "What is authorization?", correct_answer_id: 9, deck_id: 1)

  PossibleAnswer.create!(answer: "Permissions allowing or denying access to specific functions to certain users", card_id: 3)
  PossibleAnswer.create!(answer: "the same as authentication"
  , card_id: 3)
  PossibleAnswer.create!(answer: "the process of verifying the users identity to the server", card_id: 3)
  PossibleAnswer.create!(answer: "logging in or registering", card_id: 3)



  Card.create!(question: "How do we authenticate a user?", correct_answer_id: 13, deck_id: 1)

  PossibleAnswer.create!(answer: "by comparing what is in the database with what a user inputs", card_id: 4)
  PossibleAnswer.create!(answer: "ask them who they are"
  , card_id: 4)
  PossibleAnswer.create!(answer: "just let them use the website without logging in", card_id: 4)
  PossibleAnswer.create!(answer: "ask them some questions.. they sound pretty legit", card_id: 4)
 

  Card.create!(question: "What is the difference between authorization and authentication?", correct_answer_id: 19, deck_id: 1)

  PossibleAnswer.create!(answer: "They are the same", card_id: 5)
  PossibleAnswer.create!(answer: "authorization is who you are, authentication is what you have permission to do"
  , card_id: 5)
  PossibleAnswer.create!(answer: "authentication is who you are, authorization is what you have permission to do", card_id: 5)
  PossibleAnswer.create!(answer: "there are no differences they just have to work together", card_id: 5)


  Card.create!(question: "Why do we use authorization?", correct_answer_id: 24, deck_id: 1)

  PossibleAnswer.create!(answer: "to make the UI more difficult than it has to be", card_id: 6)
  PossibleAnswer.create!(answer: "to know who is using our site"
  , card_id: 6)
  PossibleAnswer.create!(answer: "because someone told us it was important", card_id: 6)
  PossibleAnswer.create!(answer: "to protect our site and only give permissions to people that are allowed to have them", card_id: 6) 


  Card.create!(question: "It is enough to just and show/ hide buttons in an application?", correct_answer_id: 26, deck_id: 1)

  PossibleAnswer.create!(answer: "true", card_id: 7)
  PossibleAnswer.create!(answer: "false", card_id: 7)


  Card.create!(question: "How do we fully secure an application?", correct_answer_id: 30, deck_id: 1)

  PossibleAnswer.create!(answer: "Make the UI difficult to use", card_id: 8)
  PossibleAnswer.create!(answer: "Don't worry about it, everything is fine..."
  , card_id: 8)
  PossibleAnswer.create!(answer: "by using authentication of our users", card_id: 8)
  PossibleAnswer.create!(answer: "hiding/showing buttons, protecting gets/ inputs in the url, and hiding destructive routes", card_id: 8) 

  ## start js deck
  Card.create!(question: "What is variable hoisting?", correct_answer_id: 33, deck_id: 2)

  PossibleAnswer.create!(answer: "putting all variables at the beginning of the code", card_id: 9)
  PossibleAnswer.create!(answer: "using a variable and then defining it"
  , card_id: 9)
  PossibleAnswer.create!(answer: "declaring all variables at the top of their scope", card_id: 9)
  PossibleAnswer.create!(answer: "raising all variables to their highest power", card_id: 9) 


  Card.create!(question: "What is an object literal?", correct_answer_id: 38, deck_id: 2)

  PossibleAnswer.create!(answer: "a way of creating many objects", card_id: 10)
  PossibleAnswer.create!(answer: "a function that creates many objects with similar properties"
  , card_id: 10)
  PossibleAnswer.create!(answer: "an object...literally", card_id: 10)
  PossibleAnswer.create!(answer: "the creation of one unique object, defined with that objects specific values and properties", card_id: 10) 


  Card.create!(question: "Variables can defined without using 'var'?", correct_answer_id: 39, deck_id: 2)

  PossibleAnswer.create!(answer: "true", card_id: 11)
  PossibleAnswer.create!(answer: "false", card_id: 11)


  Card.create!(question: "How is scope determined in JS?", correct_answer_id: 41, deck_id: 2)

  PossibleAnswer.create!(answer: "There are only two types of scope, and must be used accordingly ", card_id: 12)
  PossibleAnswer.create!(answer: "it's a free-for-all"
  , card_id: 12)
  PossibleAnswer.create!(answer: "by the class", card_id: 12)
  PossibleAnswer.create!(answer: "its just whatever js feels like doing that day", card_id: 12)


  Card.create!(question: "What does it mean for a function to be a 'first-class citizen'?", correct_answer_id: 46, deck_id: 2)

  PossibleAnswer.create!(answer: "That's a really good question ", card_id: 13)
  PossibleAnswer.create!(answer: "this means that the language supports constructing new functions during the execution of a program, storing them in data structures, passing them as arguments to other functions, and returning them as the values of other functions."
  , card_id: 13)
  PossibleAnswer.create!(answer: "it's only the finest of functions", card_id: 13)
  PossibleAnswer.create!(answer: "its ones that have the most ability", card_id: 13)


   Card.create!(question: "Can closures make global variables local and private?", correct_answer_id: 49, deck_id: 2)

  PossibleAnswer.create!(answer: "yes", card_id: 14)
  PossibleAnswer.create!(answer: "no", card_id: 14)
  PossibleAnswer.create!(answer: "Wow, I wish I knew the answer", card_id: 14)
  PossibleAnswer.create!(answer: "what's closure?", card_id: 14) 


  Card.create!(question: "What happens when we try to access property of an object that doesn't exist?", correct_answer_id: 55, deck_id: 2)

  PossibleAnswer.create!(answer: "it blows up", card_id: 15)
  PossibleAnswer.create!(answer: "it throws an error", card_id: 15)
  PossibleAnswer.create!(answer: "it returns undefined", card_id: 15)
  PossibleAnswer.create!(answer: "it tells you that you are missing a bracket somewhere", card_id: 15) 


  Card.create!(question: "What is the inheritance system that JS uses?", correct_answer_id: 60, deck_id: 2)

  PossibleAnswer.create!(answer: "the same one that Ruby does", card_id: 16)
  PossibleAnswer.create!(answer: "it doesn't", card_id: 16)
  PossibleAnswer.create!(answer: "it starts at the object.prototype, then the prototype, then the object itself", card_id: 16)
  PossibleAnswer.create!(answer: "it starts at the object itself, then the prototype, then the object.prototype", card_id: 16) 

  ## BEGIN HTML

  Card.create!(question: "What is HTML?", correct_answer_id: 61, deck_id: 3)

  PossibleAnswer.create!(answer: "Hyper Text Markup Language", card_id: 17)
  PossibleAnswer.create!(answer: "Hypo Text Madeup Language", card_id: 17)
  PossibleAnswer.create!(answer: "Hippos Text Markup Language", card_id: 17)
  PossibleAnswer.create!(answer: "The the thing that makes the internet work", card_id: 17)


  Card.create!(question: "Which of the following does HTML not do?", correct_answer_id: 67, deck_id: 3)

  PossibleAnswer.create!(answer: "HTML describes the structure of Web pages using markup", card_id: 18)
  PossibleAnswer.create!(answer: "HTML elements are the building blocks of HTML pages", card_id: 18)
  PossibleAnswer.create!(answer: "HTML is the language that supports all other languages", card_id: 18)
  PossibleAnswer.create!(answer: "HTML tags label pieces of content such as 'heading', 'paragraph', 'table', and so on", card_id: 18)


  Card.create!(question: "Why do we use html?", correct_answer_id: 72, deck_id: 3)

  PossibleAnswer.create!(answer: "We have to", card_id: 19)
  PossibleAnswer.create!(answer: "Its what people like the best", card_id: 19)
  PossibleAnswer.create!(answer: "Are their any other choices?", card_id: 19)
  PossibleAnswer.create!(answer: "Its universal and ensures formatting (when used correctly", card_id: 19)


  Card.create!(question: "The method attribute is the route in which a form is sent", correct_answer_id: 74, deck_id: 3)

  PossibleAnswer.create!(answer: "True", card_id: 20)
  PossibleAnswer.create!(answer: "False", card_id: 20)


  Card.create!(question: "What is meant by semantic markup?", correct_answer_id: 76, deck_id: 3)

  PossibleAnswer.create!(answer: "I need to know that?!!", card_id: 21)
  PossibleAnswer.create!(answer: "element tags that define their content", card_id: 21)
  PossibleAnswer.create!(answer: "element tags that do not define their content", card_id: 21)
  PossibleAnswer.create!(answer: "its all just HTML right?!", card_id: 21)


  Card.create!(question: "What do you want to use valid HTML (select the one that is not true)?", correct_answer_id: 81, deck_id: 3)

  PossibleAnswer.create!(answer: "Make code more likely to work on browsers that haven't been tested", card_id: 22)
  PossibleAnswer.create!(answer: "looks more professional", card_id: 22)
  PossibleAnswer.create!(answer: "It does not render as quickly", card_id: 22)
  PossibleAnswer.create!(answer: "It quickly points out bugs", card_id: 22)


  Card.create!(question: "it is important to use different input types because they have different behaviors?", correct_answer_id: 83, deck_id: 3)

  PossibleAnswer.create!(answer: "True", card_id: 23)
  PossibleAnswer.create!(answer: "False", card_id: 23)


  Card.create!(question: "How and why would you use an 'alt' tag?", correct_answer_id: 86, deck_id: 3)

  PossibleAnswer.create!(answer: "as an element to define a section", card_id: 24)
  PossibleAnswer.create!(answer: "with an image if it cannot be displayed", card_id: 24)
  PossibleAnswer.create!(answer: "as a backup source to a website", card_id: 24)
  PossibleAnswer.create!(answer: "as an alternative link", card_id: 24)

  ## Begin AJAX/jQuery
  Card.create!(question: "What is jQuery?", correct_answer_id: 91, deck_id: 4)

  PossibleAnswer.create!(answer: "that's a good question", card_id: 25)
  PossibleAnswer.create!(answer: "fancy JS", card_id: 25)
  PossibleAnswer.create!(answer: "A JS library that simplifies common events", card_id: 25)
  PossibleAnswer.create!(answer: "a bunch of helper methods", card_id: 25)


  Card.create!(question: "What does jQuery allow us to do?", correct_answer_id: 96, deck_id: 4)

  PossibleAnswer.create!(answer: "create constructor functions and object literals", card_id: 26)
  PossibleAnswer.create!(answer: "fancy JS", card_id: 26)
  PossibleAnswer.create!(answer: "lots of stuff", card_id: 26)
  PossibleAnswer.create!(answer: "event handling, AJAX, DOM traversal", card_id: 26)


  Card.create!(question: "What is event delegation?", correct_answer_id: 98, deck_id: 4)

  PossibleAnswer.create!(answer: "One function telling another one what to do", card_id: 27)
  PossibleAnswer.create!(answer: "an event listener on a parent function", card_id: 27)
  PossibleAnswer.create!(answer: "fancy AJAX", card_id: 27)
  PossibleAnswer.create!(answer: "An event on an element", card_id: 27)


  Card.create!(question: "Why do we need to delegate events?", correct_answer_id: 103, deck_id: 4)

  PossibleAnswer.create!(answer: "so that an element knows how to respond", card_id: 28)
  PossibleAnswer.create!(answer: "we don't", card_id: 28)
  PossibleAnswer.create!(answer: "so that even future elements have the same behavior", card_id: 28)
  PossibleAnswer.create!(answer: "its just how we do it", card_id: 28)


  Card.create!(question: "What is AJAX?", correct_answer_id: 105, deck_id: 4)

  PossibleAnswer.create!(answer: "an exchange with the server that updates part of the webpage without reloading the entire thing", card_id: 29)
  PossibleAnswer.create!(answer: "fancy JS", card_id: 29)
  PossibleAnswer.create!(answer: "a way to format a JS document", card_id: 29)
  PossibleAnswer.create!(answer: "A Javascipt Action eXchange", card_id: 29)


  Card.create!(question: "What does the '$.ajax()' jQuery method do", correct_answer_id: 112, deck_id: 4)

  PossibleAnswer.create!(answer: "some stuff", card_id: 30)
  PossibleAnswer.create!(answer: "fancy JS", card_id: 30)
  PossibleAnswer.create!(answer: "sends a JS document", card_id: 30)
  PossibleAnswer.create!(answer: "Sends an asynchronous request ", card_id: 30)

    Card.create!(question: "The done/error callback does not execute until a response is received", correct_answer_id: 113, deck_id: 4)

  PossibleAnswer.create!(answer: "True", card_id: 31)
  PossibleAnswer.create!(answer: "False", card_id: 31)



  Card.create!(question: "What are events", correct_answer_id: 115, deck_id: 4)

  PossibleAnswer.create!(answer: "clicks, hovers, submits, etc", card_id: 32)
  PossibleAnswer.create!(answer: "things that happen", card_id: 32)
  PossibleAnswer.create!(answer: "when something happens", card_id: 32)
  PossibleAnswer.create!(answer: "things delegated by JS to not do things", card_id: 32)















Round.create!(player_id: 1, deck_id: 1)

Guess.create!(round_id: 1, card_id: 1, answered_correctly: false)
Guess.create!(round_id: 1, card_id: 1, answered_correctly: true)
Guess.create!(round_id: 1, card_id: 2, answered_correctly: true)
