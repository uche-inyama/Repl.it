def quickselect(arr,k)
    
    return arr[0] if arr.length == 1

    pivot = arr.last

    lows = arr.select { |x| x < pivot }
    highs = arr.select { |x| x > pivot }
    pivots = arr.select { |x| x == pivot }

    if k < lows.length
        return quickselect(lows, k)
    elsif k < lows.length + pivots.length
        return pivots[0]
    else
        return quickselect(highs, 0)
    end
end

def median(array)
    k = array.length/2
    return quickselect(array, k)
end
p median([0, 1, 2, 4, 6, 5, 5])