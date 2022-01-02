# #complexity n!
# def anagram?(str1, str2)
#     permutations(str1.split("")).include?(str2.split)
#         return true if perm.join("") == str2     
#     end
#     false
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
# require "byebug"
def second_anagram(str1, str2)

    str1.each_char.with_index do |char, i|
        #  debugger
        if str2.include?(char)
            index = str2.index(char)
            str2 = str2.delete(str2[index])
            return true if str2.empty?
        else
            return false
        end
    end 
end

# p second_anagram("gizmo", "sally")
# p second_anagram("elvis", "lives")    #=> true

def third_anagram(str1, str2)
    str1.split("").sort == str2.split("").sort
end

p third_anagram("gizmo", "sally")
p third_anagram("elvis", "lives")