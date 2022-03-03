
def bubble_sort(array) #Sorts an array of numbers using the bubble sort algorithm
    bubble_sort_helper(array, 1, false, 0)
end

def bubble_sort_helper(array, i, is_swapped, count)#helper function for bubble sort. 
    #Base Case
    #p array #to watch the bubbling
    if(i > array.length - 1 - count)
        count += 1
        return array if (!is_swapped || count == array.length - 1) 
        i = 1
        is_swapped == false
    end
    #Body
    if(array[i - 1] > array[i]) 
        temp = array[i]
        array[i] = array[i -1]
        array[i - 1] = temp
        is_swapped = true
    end

    bubble_sort_helper(array, i + 1, is_swapped, count)#tail recursive call, tail recursion needs to be turned on in Ruby.
end


