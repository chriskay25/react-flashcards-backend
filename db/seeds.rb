# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Deck.destroy_all
Card.destroy_all

user = User.create(username: "chris", password: "kay")
user2 = User.create(username: "mariah", password: "sappington")
user3 = User.create(username: "chuck", password: "norris")

user.decks.create([ { name: "Ruby" }, { name: "Javascript" }, { name: "Rails" }, { name: "React" }, {name: "Economics"}, {name: "Art History"}, {name: "Economics"}, {name: "Physics"} ])
user3.decks.create([{name: 'Geography'}, {name: 'History'}])

deck0 = user.decks[0]
deck0.cards.create([
  {question: "This is used to manage different versions of Ruby.", answer: "rvm"},
  {question: "Loops allow you to _____ through a list of items", answer: "iterate"}
])

deck1 = user.decks[1]
deck1.cards.create([
  {question: "What collection does this card belong in?", answer: "javascript"},
  {question: "What function can be called after fetch, in case something goes wrong?", answer: "catch"},
  {question: "'{}', in Javascript terms, represents a...", answer: "object"},
  {question: "True or False: the properties(keys) of JS Objects can point to any data type, including other Objects.", answer: "true"}
])

deck2 = user.decks[2]
deck2.cards.create([
  {question: "What is the built-in ORM that Rails utilizes to manage models and communicate with the database?", answer: "active record"},
  {question: "The routes.rb file can be found in which Rails directory?", answer: "config"},
  {question: "Does the show action typically correspond with a static route or dynamic route?", answer: "dynamic"},
  {question: "If you get a 'ForbiddenAttributesError', you probably forgot to use ______", answer: "strong params"},
  {question: "The only way to trigger validation without touching the database is to call the ______ method", answer: "valid?"}
])

deck3 = user.decks[3]
deck3.cards.create([
  {question: "Virtually everything in React is a ______", answer: "component", hint: "Starts with a 'c'"},
  {question: "The language that React utilizes", answer: "jsx", hint: "Three letters"},
  {question: "Components require this function to work", answer: "render()", hint: "Word also used in cooking"},
  {question: "Keys help React identify which items have changed, are added, or are removed. Keys should be _____ (long answer)", answer: "given to the elements inside an array to give the elements a stable identity"},
  {question: "A key is a special string attribute you need to include when ______ (4 words)", answer: "creating lists of elements"},
  {question: "Components let you split the UI into ______ (3 words)", answer: "independent reusable pieces"},
  {question: "What are the three types of components in alphabetical order (no commas)?", answer: "class function pure"},
  {question: "______ are used so programmers don't need to reinvent the wheel, so to speak (2 words).", answer: "node packages"},
  {question: "What's the name of the transpiler that converts modern Javascript and custom code like JSX into more widely compatible JS?", answer: "babel"},
  {question: "What's the nameof the 'bundler' that takes all our work, along with any required dependency code, and packages it all up in a single transferable bundle?", answer: "webpack"},
  {question: "______ are units of information passed from a parent component down to a child component", answer: "props"},
  {question: "It's a good idea to have these in case props are not provided (2 words).", answer: "default props"},
  {question: "In React, we want components to ______ (3 words) that they can and should be responsible for.", answer: "encapsulate the functionality"},
  {question: "Passing information between ______ components is taboo in React.", answer: "children"},
  {question: "When using ______ (2 words), you can use parentheses instead of curly braces to implicitly return a value.", answer: "arrow functions"},
  {question: "State is reserved only for _______", answer: "interactivity"},
  {question: "Container components, having to deal with state, are usually ______ components.", answer: "class"},
  {question: "True or False: Container Components rarely have any HTML markup of their own, aside from a wrapping <div>.", answer: "true"},
  {question: "______ is only reserved for data that changes in a component and is visible in the UI", answer: "state"},
  {question: "Instead of setting state directly, what method is used to let React know that state has changed and the component needs to be re-rendered?", answer: "this.setState()", hint: "Don't forget to append 'this'"},
  {question: "A form that derives its input values from state is called a ______ (2 words)?", answer: "controlled form"},
  {question: "_______ exists for only one purpose - it enables a component to update its internal state as the result of changes in props.", answer: "static getDerivedStateFromProps"},
  {question: "componentDidMount is only called once, immediately _______ the first render() method has taken place.", answer: "after"},
  {question: "The lifecycle method that cleans up things that were set up in componentDidMount is called _______", answer: "componentWillUnmount"},
  {question: "If your intention is to set state using data from an async request, where should the state be set?", answer: "componentDidMount"}
])

deck4 = user.decks[4]
deck4.cards.create([
  {question: "Which U.S. state has the most volcanos?", answer: "hawaii"}
])

deck5 = user.decks[5]
deck5.cards.create([
  {question: "What movie is Buzz Lightyear from?", answer: "toy story"}
])

deck6 = user3.decks[0]
deck6.cards.create([
  {question: "What is the capital of the state of Georgia?", answer: "atlanta"},
  {question: "How many Great Lakes are in the United States?", answer: "5"},
  {question: "Where is the muffin man from?", answer: "you tell me"}
])