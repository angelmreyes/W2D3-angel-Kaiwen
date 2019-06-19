require "card"

class Deck

    attr_reader :collection

    SUITS = [
        "heart",
        "diamond",
        "club",
        "spade"
    ]

    def initialize
      @collection = []
        
      SUITS.each do |suit|
       (1..13).each do |value|
          @collection.push(Card.new(suit, value)) 
        end
      end
    end
end