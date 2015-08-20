require_relative "counter"
require "minitest/autorun"

describe Counter do 
  before do
    @counter = Counter.new
  end

  describe "#max_character_count" do
    it "must return a hash with the most used character and count" do
      results = @counter.max_character_count "aaabbc"
      expected_result = ["a",3]
      results.must_equal expected_result
    end 
    it "must return a hash with the lowest code point if tied for max count" do
      results = @counter.max_character_count "aabbc"
      expected_result = ["a",2]
      results.must_equal expected_result
    end
  end
  describe "#min_character_count" do
    it "must return a hash with the least used character and count" do
      results = @counter.min_character_count "aaabbc"
      expected_result = ["c",1]
      results.must_equal expected_result
    end
    it "must return a hash with the lowest code point if tied for min count" do
      results = @counter.min_character_count "daabbc"
      expected_result = ["c",1]
      results.must_equal expected_result
    end
  end
  describe "when given the string 'aaabbc'" do
    it "must return a hash with ['c',1] and ['a',3'] key value pairs" do 
      results = @counter.character_min_max_occurrences "aaabbc"
      expected_result = [["c", 1], ["a",3]]

      results.must_equal expected_result
    end
  end
  describe "when given the string 'aabbec'" do
    it "must return" do
      results = @counter.character_min_max_occurrences "aabbec"
      expected_result = [["c", 1],["a",2]]
      results.must_equal expected_result
    end
  end

end
