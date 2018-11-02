def anagram1?(str1,str2)
  arr = str1.chars.permutation.to_a
  arr.map! { |set| set.join }
  arr.include?(str2)
end
#O(n!)
p anagram1?("gizmo", "sally") # false
p anagram1?("elvis", "lives") #true
p anagram1?('cat', 'act') # [cat, atc, tca, tac, atc, cta]

def anagram2?(str1,str2)
arr = str2.chars
  str1.each_char do |char|
    ifarr.include?(char)
      i =arr.index(char)
    arr.delete_at(i)
    end
  end
  arr.empty?
end
#O(n^2) it better than anagram 1
#O(n)
p "--------------------------"
p anagram2?("gizmo", "sally") # false
p anagram2?("elvis", "lives") #true
p anagram2?('cat', 'act') # [cat, atc, tca, tac, atc, cta]

def anagram3?(str1,str2)
  str1.chars.sort == str2.chars.sort
end
#O(n^2) its slower than anagram2
#O(nlogn)
p "--------------------------"
p anagram3?("gizmo", "sally") # false
p anagram3?("elvis", "lives") #true
p anagram3?('cat', 'act') # [cat, atc, tca, tac, atc, cta]


def anagram4?(str1,str2)
  hash = Hash.new(0)
  str1.each_char { |ch| hash[ch] += 1 }
  str2.each_char { |ch| return false if str2.count(ch) != hash[ch] }
 # loop over hash values 
 true
end
#O(n)
p "--------------------------"
p anagram4?("gizmo", "sally") # false
p anagram4?("elvis", "lives") #true
p anagram4?('cat', 'act') # [cat, atc, tca, tac, atc, cta]