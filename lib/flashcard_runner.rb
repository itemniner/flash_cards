require './lib/card'
require './lib/deck'
require './lib/turn'
require './lib/round'


card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

cards = [card_1, card_2, card_3]

deck = Deck.new(cards)

#guess = "Jueanu"

#turn = Turn.new("Juneau", card_1) #This is the user input?

round = Round.new(deck)

# guess = "Juneau"

#new_turn = Turn.new(guess, round.current_card)

# deck.cards_in_category(:STEM)


new_turn = round.take_turn("Juneau")

p round.number_correct_by_category(:Geography)

binding.pry
