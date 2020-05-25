def swap(arr, first, second)
  store = arr[first]
  arr[first] = arr[second]
  arr[second] = store
  arr
end

def bubble_sort(arr)
  loop do
    swap_counter = 0
    (0...arr.length - 1).each do |i|
      next unless (arr[i] <=> arr[i + 1]) == 1

      swap(arr, i, i + 1)
      swap_counter += 1
    end
    break if swap_counter.zero?
  end
  arr
end
