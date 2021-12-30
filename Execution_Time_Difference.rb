#nested 
require "byebug"
#time complexity O(n^2)
# def my_min(arr)
#     min = 0
#     (0...arr.length).each do |i|
#         new_arr = arr[i+1..-1]
#         new_arr.any? do |ele| 
#             if ele < min 
#                 min = ele
#             end
#         end 
#     end 

#         # (i+1...arr.length).each do |i2|
#         #     # debugger
#         #     if arr[i] < arr[i2]
#         #         min = arr[i]
#         #     else
#         #         min = arr[i2]
#         #     end
#         # end
#     min
# end

#time complexity O(n)
# def my_min(arr)
#     arr.inject do |acc, ele| 
#         if acc < ele 
#             acc
#         else
#             ele 
#         end 
#     end 
# end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)  # =>  -5

# #n^2 + n => n^2
# def sub_sum(arr)
#     new_arr = []
#     (0...arr.length).each do |i|
#         (i...arr.length).each do |i2|
#             new_arr << arr[i..i2]
#         end
#     end 
   
#     max = new_arr[0]
#     new_arr.each do |sub|
#         max = sub if sub.sum > max.sum
#     end
#     max.sum
# end
# list = [5, 3, -7]
# p sub_sum(list) # => 8

#no sub_sets to get the answer
#keep track of the largest sum vs cur_sum
# we can have only one iteration and 
# check max_sum and cur_sum, from cur_pos + nex_pos = cur_sum check which max_sum or cur_sum is greated, if cur is greater. reassign
# break the while loop if list.length  
#time complexity O(n) 
def sub_sum(arr)
    current_sum = arr.first #current_sum = 5
    max_sum = current_sum # 5

    (1...arr.length).each do |i| #arr[i] = -6
        current_sum += arr[i] #current_sum = -1
        current_sum = 0 if current_sum < 0 
        if current_sum > max_sum
            max_sum = current_sum
        end 
    end 
    max_sum
end

list = [2, 3, -6, 7, -6, 7]
p sub_sum(list) # => 8 (from [7, -6, 7])
