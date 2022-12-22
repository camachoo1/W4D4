def first_anagram?(str_1, str_2) # O(n!)
    
    # iterate over all str_1 anagrams []
    # [].include?(str_2)
    find_anagrams(str_1).include?(str_2)
end

def find_anagrams(str) # "abc" => [ "abc", "bca", "cab", "cba", "bac", "acb" ] => 3!
  return [str] if str.length <= 1
  return [str, str.reverse] if str.length == 2

  old_anagrams = find_anagrams(str[0...-1]) # => 'ab' => ['ab', 'ba']
  ana_arr = []
  old_anagrams.each do |anagram|
    (0..anagram.length).each do |i|
      # anagram = 'ab' => anagram[i] => 'a'
      new_str = anagram.dup
      new_str.insert(i, str[-1])
      ana_arr << new_str
    end
    ana_arr
  end
  ana_arr
end

# p first_anagram?("elvis", "lives")    #=> true
# p find_anagrams('abc')
# 1 => [1]
# 12 => [12, 21]
# 123 => [3/12, 3/21 | 1/3/2. 2/3/1, | 12/3, 21/3]

def second_anagram?(str_1, str_2)  #O(n^2)
  arr_1 = str_1.split('')
  arr_2 = str_2.split('')
  arr_1.each.with_index do |char, i|
    idx = arr_2.find_index(char)
    return false unless idx
    arr_2.delete(arr_2[idx])
    # arr_2
  end
  arr_2.empty?
end

def third_anagram?(str_1, str_2) # O(nlogn)
  sorted_1 = str_1.split('').sort.join
  sorted_2 = str_2.split('').sort.join
  sorted_1 == sorted_2
end

def fourth_anagram?(str_1, str_2) # O(n)
  count = Hash.new(0)
  str_1.each_char { |char| count[char] += 1 }
  str_2.each_char { |char| count[char] -= 1 }
  return true if count.all? { |k, v| v.zero? }
end