arr = [9, 2, 5, 3, 10, 0]
# 2,9,5,3,10,0
# 2,5,9,3,10,0
# 2,5,3,9,10,0
# 2 5 3 10, 9 0
# 2 5 3 10 0 9
# 2 6 6 8 3 5
#=====================#

def swap(arr, first, second)
  store = arr[first]
  arr[first] = arr[second]
  arr[second] = store
  arr
end

#=====================#

loop do
  swap_counter = 0
  (0...arr.length - 1).each do |i|
    next unless (arr[i] <=> arr[i + 1]) == 1

    swap(arr, i, i + 1)
    swap_counter += 1
    # else
    #   next
    # end

    p "#{arr} at #{swap_counter}"
  end
  puts "swap counter #{swap_counter}"
  break if swap_counter.zero?
end
p arr
