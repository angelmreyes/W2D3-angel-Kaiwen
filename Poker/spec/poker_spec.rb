require "rspec"
require "card"
require "deck"
require "hand"
require "player"
require "game"

describe "Poker" do
  describe Card do
    subject(:card) { Card.new("heart", 5) }

    describe "#initialize" do
      it "returns an instance of the Card class" do
        expect(card.is_a?(Card)).to be(true)
      end

      it "sets a suit to a card" do
        expect(card.suit).to eq("heart")
      end

      it "sets a value to a card" do
        expect(card.value).to eq(5)
      end
    end
  end

  describe Deck do
    subject(:deck) { Deck.new }

    describe "#initialize" do
      it "returns an instance of the Deck class" do
        expect(deck.is_a?(Deck)).to be(true)
      end

      it "creates an array of length 52" do
        expect(deck.collection.length).to eq(52)  
      end

      it "fills the array with card objects" do
        expect(deck.collection.all? { |card| card.is_a?(Card) }).to eq(true)
      end

      it "returns 13 cards for each of the 4 suits" do
        hearts = 0
        diamonds = 0
        spades = 0
        clubs = 0

        sum_hearts = 0
        sum_diamonds = 0
        sum_spades = 0
        sum_clubs = 0

        deck.collection.each do |card|
          case card.suit
          when "heart"
            hearts += 1
            sum_hearts += card.value
          when "diamond"
            diamonds += 1
            sum_diamonds += card.value
          when "spade"
            spades += 1
            sum_spades += card.value
          when "club"
            clubs += 1
            sum_clubs += card.value
          end 
        end

        expect(hearts).to eq(13)
        expect(diamonds).to eq(13)
        expect(spades).to eq(13)
        expect(clubs).to eq(13)

        expect(sum_hearts).to eq(91)
        expect(sum_diamonds).to eq(91)
        expect(sum_spades).to eq(91)
        expect(sum_clubs).to eq(91)
      end
    end

    describe "#take_card" do
      it "returns the top card."
      it "shortens the length of collection by one."
    end

    describe "#return_card(card)" do
      it "takes a card argument."
      it "adds the card to the end of the collection."
    end

    describe "shuffle!" do
      it "changes the ordering of the collection."
    end

  end

  describe Hand do
    subject(:hand) { Hand.new}
    
    describe "#initialize" do
      it "returns an instance of the Hand class" do 
        expect(hand.is_a?(Hand)).to be(true)  
      end

      it "contains the logic of calculating pair, three-of-a-kind, two-pair, etc. goes here."
      it "contains the logic of which hand beats which would go here."
    end
  end

  describe Player do

    describe "#initialize" do
      it "Each player has a hand, plus a pot"
      it "Player has methods to ask the user:"
      it "Which cards they wish to discard #draw up to three cards. Dealt (call #deal) new cards from deck."
      it "players #bet again"
      it "Whether they wish to #fold, #see, or #raise. not folds, then #revel hands. win? (strongest hand wins)"
    end
  end

  describe Game do

    describe "#initialize" do
      it "Holds the deck"
      it "Keeps track of whose turn it is"
      it "Keeps track of the amount in the pot."
    end
  end

end
