# spec/question6_spec.rb
require_relative '../lib/question6'

describe String do
  describe "#strip_whitespace" do
    it "removes all whitespace" do
      str = "   three ninjas attack!  "
      expected = "threeninjasattack!"
      expect(str.strip_whitespace).to eq expected
    end
  end
end
