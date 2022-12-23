require "byebug"

def my_min_1(list) # O(n^2)
  min_num = false
  (0...list.length - 1).each do |i|
    (i + 1...list.length - 1).each do |j|
      list[i] < list[j] ? min_num == list[i] : min_num == list[j]
    end
  end
  min_num
end

def my_min_2(list) # O(n)
  min_num = list.first
  list.each { |num| min_num = num if num < min_num }
  min_num
end

def largest_contiguous_subsum_1(list) # O(n^3)
    subs = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
          subs << list[i..j]
        end
    end
    sums = []
    subs.each do |arr|
        sums << arr.sum
    end
    sums.max
end
# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum_1(list) # => 8


def largest_contiguous_subsum_2(list) # O(n)
    biggest_sum = list.first
    current_sum = list.first

    (1...list.length).each do |i|
      current_sum < 0 ? current_sum = list[i] : current_sum += list[i]
      biggest_sum = current_sum if current_sum >= biggest_sum
    end

    biggest_sum
end

# list = [-7, 5, 3]
# p largest_contiguous_subsum_2(list) # => 8

# list = [2, 3, -6, 7, -6, 7]
# p largest_contiguous_subsum_2(list) # => 8

# list = [-5, -1, -3]
# p largest_contiguous_subsum_2(list) # => -1


# [2, 3, -6, 7, -6, 7]
# [2, 5, -1, 7, 1, 8]
# [2, 2->5, 5,7,7, 8]
