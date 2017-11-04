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
    it 'test_the_sound_for_6_is_pling_as_it_has_a_factor_3' do
      expect(Raindrops.convert(6)).to eq 'Pling'
    end
    it 'test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base' do
      expect(Raindrops.convert(8)).to eq '8'
    end
    it 'test_the_sound_for_9_is_pling_as_it_has_a_factor_3' do
      expect(Raindrops.convert(9)).to eq 'Pling'
    end
    it 'test_the_sound_for_10_is_plang_as_it_has_a_factor_5' do
      expect(Raindrops.convert(10)).to eq 'Plang'
    end
  end
end
