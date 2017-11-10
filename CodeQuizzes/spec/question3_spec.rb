# spec/question3_spec.rb
require_relative '../lib/question3'

describe "#palindrome?" do
  it "returns true if string is a palindrome" do
    expect("racecar".palindrome?).to be true
  end
  it "returns false if string is not a palindrome" do
    expect("poochie".palindrome?).to be false
  end
end
