# Krzysztof Borawski qsort ruby implementation
class Quicksort
  def partition_array(array, left, right, pivot_index)
  pivot_value = array[pivot_index]
  array[pivot_index], array[right] = array[right], array[pivot_index]
  store_index = left

  (left..right-1).each do |i|
    if array[i] < pivot_value
      array[i], array[store_index] = array[store_index], array[i]
      store_index = store_index + 1
    end
  end

  array[store_index], array[right] = array[right], array[store_index]
  return store_index
end

def inplace_quicksort(array, left, right)
  if left < right
    pivot_index = (left + ((right - left) / 2)).to_i
    new_pivot_index = partition_array(array, left, right, pivot_index)
    inplace_quicksort(array, left, new_pivot_index - 1)
    inplace_quicksort(array, new_pivot_index + 1, right)
  end

  return array
end
  a = [4, -6, 8, 90, -67]
  p a
  sort = Quicksort.new
  sort.inplace_quicksort(a, 0, a.length - 1)
  p a
end
