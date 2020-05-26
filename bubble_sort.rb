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

def bubble_sort_by(arr)
  loop do
    swap_counter = 0
    (0...arr.length - 1).each do |i|
      next unless yield(arr[i], arr[i + 1]).positive?

      swap(arr, i, i + 1)
      swap_counter += 1
    end
    break if swap_counter.zero?
  end
  arr
end

p bubble_sort_by([9, 2, 5, 3, 10, 0]) { |a, b| a - b }
p bubble_sort([9, 2, 5, 3, 10, 0])
