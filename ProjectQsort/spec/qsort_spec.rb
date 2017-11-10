require_relative '../lib/qsort'

describe Quicksort do
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
