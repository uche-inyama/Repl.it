def transpose(string, arr1 = [])
  return string if !string.include?"gn"
  arr = string.split
  arr.each do | x |
      ans =  x.gsub('gn', 'ng')
      arr1 << ans
  end
  string = arr1.join(" ")
  transpose(string)
end
