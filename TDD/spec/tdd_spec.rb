require "rspec"
require "tdd"
require "towers_of_hanoi"

describe Array do
  describe "Remove dups" do
    describe "#my_uniq" do
      it "should take in an array"
      it "removes duplicates from an array"
      it "returns the unique elements in the order in which they first appeared"
      it "return an array"
    end
  end

  describe "Two sum" do
    describe "#two_sum" do
      it "should take in an array"
      it "finds all pairs of positions where the elements at those positions sum to zero"
      it "sorts each pairs with the smaller index before bigger index"
      it "sorts array of pairs dictionary-wise"
      it "returns a two dimensional array"
    end
  end
  
  describe "My Transpose" do
    describe "#my_transpose" do
      it "should take in an array of arrays"
      it "if the length of the subarrays do not match, and IndexError is raised"
      it "flips/switches the row and column indices of the matrix, producing another matrix"
      it "returns an array of arrays of a square matrix"
    end
  end

  describe "Stock Picker" do
    describe "#stock_picker" do
      it "should take in an array of numbers"
      it "the second index is always greater than the first index"
      it "the numbers at the pair of indices must equal the highest sum of pairs in the array"
      it "returns an array of the most profitable pair"
    end
  end
end

describe TowersOfHanoi do
  subject(:hanoi_tower) { TowersOfHanoi.new }
    
  describe "#initialize" do
    it "initializes three class variables"
    it "sets only one variable to an array of numbers in ascending order (discs' size)" #use double discs
    it "sets remaining two variables to empty arrays"
  end

  describe "#move" do
    it "takes only the upper disc from one of the stacks"
    it "places a single disc on the top of the next pile"
    it "moves a single disc (only one disc at a time) to the pile"
    it "raises error if a disc with a larger number is placed on top of a disc with a smaller number"
  end  

  describe "#von?" do
    it "fills a new array with the same amount of discs as the initial array"
    it "initial array must be different than final array"
    it "check whether all dics have been moved to the final pile"
  end
end