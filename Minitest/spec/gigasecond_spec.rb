require 'gigasecond'

describe Gigasecond do
  describe '#convert' do
    it 'test_date_only_specification_of_time' do
      expect(Gigasecond.from(Time.utc(2011, 4, 25, 0, 0, 0))).to eq Time.utc(2043, 1, 1, 1, 46, 40)
    end
    it 'test_second_test_for_date_only_specification_of_time' do
      expect(Gigasecond.from(Time.utc(1977, 6, 13, 0, 0, 0))).to eq Time.utc(2009, 2, 19, 1, 46, 40)
    end
    it 'test_third_test_for_date_only_specification_of_time' do
      expect(Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))).to eq Time.utc(1991, 3, 27, 1, 46, 40)
    end
    it 'test_full_time_specified' do
      expect(Gigasecond.from(Time.utc(2015, 1, 24, 22, 0, 0))).to eq Time.utc(2046, 10, 2, 23, 46, 40)
    end
  end
end
