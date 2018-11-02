#phase 1
def my_min2(array)
  array.each_with_index do |el,idx|
    return el if ((idx+1)...array.length).all? { |idx2| el < array[idx2] }
  end 
end 
#O(n^2)

#phase 2
def my_min(array)
  min = nil
  array.each_with_index do |el, idx|
      min = el if min.nil? || el < min 
  end 
    min
end
#O(n)


p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])
p my_min2([ 0, 3, 5, 4, -5, 10, 1, 90 ])

#phase 1
def sub_sum(array)
  arr = []
  array.each_with_index do |el, i|
    arr << el
    sum = el
    (i+1...array.length).each do |j|
      sum += array[j]
      arr << sum  
    end    
  end
  arr.max
end 
# p sub_sum([2, 3, -6, 7, -6, 7])
#phase 2
def sub_sum2(array)
  arr = []
  sum = 0
  array.each do |el|
    arr << [el] 
  end
  array.each do |el|
    array.shift
    arr << array
  end
  # p arr
  result = 0
  arr.each do |set|
    if set.reduce(:+) > result
      result = set.reduce(:+)
    end 
  end 
  result
end 
# p sub_sum2([5, 3, -7])
# p sub_sum2([2, 3, -6, 7, -6, 7])

def sub(array)
  arr = []
  array.each_index do |i|
    (i...array.length).each do |j|
      arr << array[i..j]
    end
  end
  arr 
end
p sub([5, 3, -7])

def largest_contiguous_subsum2(arr)
  largest = arr.first
  current = arr.first

  return arr.max if arr.all? { |num| num < 0 }

  (1...arr.length).each do |i|
    current = 0 if current < 0
    current += arr[i]
    largest = current if current > largest
  end

  largest
end