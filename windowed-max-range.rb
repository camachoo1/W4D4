def windowed_max_range(arr, w) # O(n * m) // O(n^2)
  current_max_range = nil
  (0..arr.length - w).each do |i|
    win = arr[i...i+w]
    current_range = win.max - win.min
    current_max_range = current_range if !current_max_range || current_range > current_max_range
  end
  current_max_range
end

# 1. [1 2 3] 5
# 2. 1 [2 3 5]
# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # == 4 # 4, 8
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) #  == 5 # 0, 2, 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # == 6 # 2, 5, 4, 8
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5) # == 6 # 3, 2, 5, 4, 8

