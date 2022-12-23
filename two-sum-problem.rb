def bad_two_sum?(arr, target) # => O(n^2)
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  false
end

def okay_two_sum?(arr, target) # O(nlogn) [3, 2, 4, 1] , 7
  sorted = arr.sort # [1, 2, 3, 4]
  i = 0
  j = sorted.length - 1

  while i < j
    if sorted[i] + sorted[j] == target
      return true
    elsif sorted[i] + sorted[j] < target
      i += 1
    else
      j -= 1
    end
  end
  false
end

def two_sum?(arr, target) # O(n)
  pairs = Hash.new(0)
  # (0...arr.length-1).each do |i|
  #   pairs[i] += arr[i]
  #   pairs[k] += arr[i+1]
  arr.each_with_index do |num, i|
    difference = target - num

    if pairs[difference] && pairs[difference] != i
      return true
    else
      pairs[difference] << i
    end
  end
  false
end

# if pairs[num] == difference
#     return true
# else pairs[num] = difference
# end

