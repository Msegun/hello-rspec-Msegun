# Krzysztof Borawski 238152 Quicksort ruby implementation
class Quicksort
  def self.quicksort(array, left, right)
    if left < right
      pivot_i = (left + ((right - left)) / 2).to_i
      new_pivot_i = partition(array, left, right, pivot_i)
      quicksort(array, left, new_pivot_i - 1)
      quicksort(array, new_pivot_i + 1, right)
    end
    array
  end

  def self.partition(array, left, right, pivot_i)
    pivot_value = array[pivot_i]
    array[pivot_i], array[right] = array[right], array[pivot_i]
    store_i = left
    (left..right - 1).each do |i|
      if array[i] < pivot_value
        array[i], array[store_i] = array[store_i], array[i]
        store_i += 1
      end
    end
    array[store_i], array[right] = array[right], array[store_i]
    store_i
  end

  def self.less?(l, r)
    l < r
  end

  def self.sorted?(array)
    for i in 1...array.length
      return false if less?(array[i], array[i - 1])

      return true
    end
  end
end
