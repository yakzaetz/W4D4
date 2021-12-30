def anagram?(str1, str2)
    res = []
    (0...str1.length).each do |i|
        (0...str1.length).each do |i2|

        end 
    end 
    res
end

def permutations(str)
    
    return [str] if str.length <= 1

    prev = permutations(str.drop(1))
end 

p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true