require 'raindrops'

describe Raindrops do
  describe '#convert' do
    it 'test_the_sound_for_1_is_1' do
      expect(Raindrops.convert(1)).to eq '1'
    end
    it 'test_the_sound_for_3_is_pling' do
      expect(Raindrops.convert(3)).to eq 'Pling'
    end
    it 'test_the_sound_for_5_is_Plang' do
      expect(Raindrops.convert(5)).to eq 'Plang'
    end
    it 'test_the_sound_for_7_is_Plong' do
      expect(Raindrops.convert(7)).to eq 'Plong'
    end
  end
end
