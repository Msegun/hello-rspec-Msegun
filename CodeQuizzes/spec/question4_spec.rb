# spec/question4_spec.rb
require 'question4'

describe Question do
  describe "#vowels" do
    it "returns array of words with vowels" do
      str = "24 hour roadside resistance"
      expected = %w|hour roadside resistance|
      expect(Question.vowels(str)).to eq expected
    end
  end
end
