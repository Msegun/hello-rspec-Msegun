require_relative '../lib/qsort'

describe Quicksort do
  describe '#testing quicksort' do
    it 'Beeing given a sorted array' do
      array = [1, 2, 3, 4, 5, 6]
      expect(Quicksort.quicksort(array, 0, array.length - 1)).to eq array
    end
    it 'Beeing given a inverted array' do
      array = [6, 5, 4, 3, 2, 1]
      array2 = [1, 2, 3, 4, 5, 6]
      expect(Quicksort.quicksort(array, 0, array.length - 1)).to eq array2
    end
  end
  describe '#testing less?' do
    it 'Check if a<b == true when a really is lesser than b' do
      a = 3
      b = 4
      expect(Quicksort.less?(a, b)).to eq true
    end
    it 'Check if a<b == false when a really is bigger than b' do
      a = 4
      b = 3
      expect(Quicksort.less?(a, b)).to eq false
    end
  end
  describe '#checking sorted? method' do
    it 'Check method sorted? when array is sorted' do
      array = [1, 2, 3, 4, 5, 6]
      expect(Quicksort.sorted?(array)).to eq true
    end
    it 'Check method sorted? when array is !sorted' do
      array = [6, 2, 1, 4, 5, 6]
      expect(Quicksort.sorted?(array)).to eq false
    end
  end
  describe '#checking two methods at once' do
    it 'Check if array is sorted after sorting' do
      array = [6, 5, 4, 3, 2, 1]
      array = Quicksort.quicksort(array, 0, array.length - 1)
      expect(Quicksort.sorted?(array)).to eq true
    end
  end
end

#     ()()
#    (*.*)
#   ("__")
# Code bunny protects this code
