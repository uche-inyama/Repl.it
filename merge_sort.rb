def merge_sort(array1, array2, array = [])

    array1_length = array1.length
    array2_length = array2.length
    i = 0
    j = 0
    while ( i < array1_length && j < array2_length)
        if (array1[i] <= array2[j])
          array << array1[i]
          i += 1
        else
          array << array2[j]
          j += 1
        end
    end
    while i < array1_length
        array << array1[i]
        i += 1
    end
    while j < array2_length
        array << array2[j]
        j += 1
    end
     array
end

p merge_sort([1, 3, 9, 11], [2, 4, 6, 8])
