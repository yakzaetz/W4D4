#nested 
require "byebug"
def my_min(arr)
    min = 0
    (0...arr.length).each do |i|
        (i+1...arr.length).each do |i2|
            debugger
            if arr[i] < arr[i2]
                min = arr[i]
            else
                min = arr[i2]
            end
        end
    end
    min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5