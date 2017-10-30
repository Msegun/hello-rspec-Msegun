# spec/question5_spec.rb
require 'question5'

describe Question do
  describe "#start_with_c?" do
  it "returns true if all words begin with 'c'" do
    str = "cool captain crunch cap"
    expect(Question.start_with_c?(str)).to be true
  end

  it "returns false if all words don't begin with 'c'" do
    str = "crazy cat dude"
    expect(Question.start_with_c?(str)).to be false
  end
end
end
