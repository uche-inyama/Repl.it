def sliding_maximum(k, array, n = 0, res = [])
  return res if k > array.length
  res << array[n...k].max
  sliding_maximum(k + 1, array, n + 1, res)
end
p sliding_maximum(3, [1, 3, 5, 7, 9, 2])
