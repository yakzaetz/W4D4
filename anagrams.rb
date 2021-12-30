#complexity n!
# def anagram?(str1, str2)
#     permutations(str1.split("")).include?(str2.split)
#     #     return true if perm.join("") == str2     
#     # end
#     # false


# end

# def permutations(arr)
#     return [arr] if arr.length <= 1
#     prev = permutations(arr.drop(1))
#     prev.inject([]) do |all_perm, perm|
#         all_perm + (0..perm.size).map do |i|
#             perm.take(i) + [arr.first] + perm.drop(i)
#         end
#     end
# end 
require "byebug"
def second_anagram(str1, str2)
    arr1 = str1.split("")
    arr2 = str2.split("")
    return nil if str1.empty?  
    arr1.each.with_index do |char, i|
        # debugger
        if char == arr2[i]
            arr1 = arr1[i + 1..-1] 
            arr2 = arr2.delete_at(i)
            return true if second_anagram(arr1.join(""), arr2.join("")) == nil                       
        end
    end 
    return false
end

p second_anagram("gizmo", "sally")
p second_anagram("elvis", "lives")    #=> true

# p anagram?("gizmo", "sally")    #=> false
# p anagram?("elvis", "lives")    #=> true
# p permutations(str)
# "cat" =< c, ca, cat, at, atc, act, t, ta, tac
# "cat" => "cat" act, 