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
    it 'test_shouting_with_special_characters' do
      remark = 'ZOMG THE %^*@\#$(*^ ZOMBIES ARE COMING!!11!!1!'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_shouting_with_no_exclamation_mark' do
      remark = 'I HATE YOU'
      expect(Bob.hey(remark)).to eq 'Whoa, chill out!'
    end
    it 'test_statement_containing_question_mark' do
      remark = 'Ending with ? means a question.'
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_non_letters_with_question' do
      remark = ':) ?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_prattling_on' do
      remark = 'Wait! Hang on. Are you going to be OK?'
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_silence' do
      remark = ''
      expect(Bob.hey(remark)).to eq 'Fine. Be that way!'
    end
    it 'test_prolonged_silence' do
      remark = '        '
      expect(Bob.hey(remark)).to eq 'Fine. Be that way!'
    end
    it 'test_alternate_silence' do
      remark = "\t\t\t\t\t\t\t\t\t\t"
      expect(Bob.hey(remark)).to eq 'Fine. Be that way!'
    end
    it 'test_multiple_line_question' do
      remark = "\nDoes this cryogenic chamber make me look fat?\nno"
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_starting_with_whitespace' do
      remark = '         hmmmmmmm...'
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
    it 'test_ending_with_whitespace' do
      remark = 'Okay if like my  spacebar  quite a bit?   '
      expect(Bob.hey(remark)).to eq 'Sure.'
    end
    it 'test_other_whitespace' do
      remark = "\n\r \t"
      expect(Bob.hey(remark)).to eq 'Fine. Be that way!'
    end
    it 'test_non_question_ending_with_whitespace' do
      remark = 'This is a statement ending with whitespace      '
      expect(Bob.hey(remark)).to eq 'Whatever.'
    end
  end
end
