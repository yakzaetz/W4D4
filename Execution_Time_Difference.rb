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

def sub_sum(matrix)
    
end