def add(a,b)
    a + b
end
def subtract(a,b)
    a - b
end

def sum(array)
 
     #array[0] || 0
    # if array.empty? 
    #     0
    # else 
    #     if array.length == 5
    #         array.reduce(:+)
    #      elsif array.length > 1
    #         array.first + array[1]
    #   else
    #         array.first
    #     end 
    # end
    array.reduce(:+).to_i
end

