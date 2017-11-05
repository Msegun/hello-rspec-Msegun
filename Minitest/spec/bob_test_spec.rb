require 'bob'

describe Bob do
  describe '#hey' do
    it 'test_stating_something' do
      remark = 'Tom-ay-to, tom-aaaah-to.'
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_shouting' do
      remark = 'WATCH OUT!'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_shouting_gibberish' do
      remark = 'FCECDFCAAB'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_asking_a_question' do
      remark = 'Does this cryogenic chamber make me look fat?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_asking_a_numeric_question' do
      remark = 'You are, what, like 15?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_asking_gibberish' do
      remark = 'fffbbcbeab?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_talking_forcefully' do
      remark = "Let's go make out behind the gym!"
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_using_acronyms_in_regular_speech' do
      remark = "It's OK if you don't want to go to the DMV."
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_forceful_question' do
      remark = 'WHAT THE HELL WERE YOU THINKING?'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_shouting_numbers' do
      remark = '1, 2, 3 GO!'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_only_numbers' do
      remark = '1, 2, 3'
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_question_with_only_numbers' do
      remark = '4?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
  end
end
