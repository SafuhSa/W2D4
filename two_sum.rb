require "byebug"
def merge_sort(arr)
  return arr if arr.length == 1
  mid = arr.length / 2
  left = merge_sort(arr[0...mid])
  right = merge_sort(arr[mid..-1])
  
  merge(left, right)
end
def merge(left, right)
  arr = []
  
  until left.empty? || right.empty?
    if left.first < right.first
      arr << left.shift
    else
      arr << right.shift
    end
  end
  arr + left + right
end

  #O(n^2)
def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |el, i|
      ((i+1)...arr.length).each do |j|
        return true if el + arr[j] == target_sum
      end
    end
    false
  end

def okay_two_sum?(arr, target)
  sorted = merge_sort(arr)
  debugger
  first = sorted[0]
  last = sorted[-1]
  until sorted.empty?
    return true if (first + last) == target
    if (first + last) > target
      sorted.pop
    else
      sorted.shift
    end 
  end
  false
end

def two_sum?(arr, target)
  
  arr.each do |variable|
    
  end
end

arr = [1, 3, 5, 7]
# p bad_two_sum?(arr, 6) # => should be true
# p bad_two_sum?(arr, 10) # => should be false
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false



