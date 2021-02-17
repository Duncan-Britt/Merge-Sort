def my_merge(array)
  return array if array.length == 1
  halves = []
  if array.length.even?
    array.each_slice(array.length/2) do |half|
      halves << half
    end
  else
    array.each_slice(array.length/2+1) do |half|
      halves << half
    end
  end
  sequence = [my_merge(halves[0]), my_merge(halves[1])]
  return sequence.flatten.sort
end

arr = [6,3,6,2,9]

p my_merge(arr)
