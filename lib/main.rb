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

  #return sequence.flatten.sort
  return sort_halves(sequence[0], sequence[1])
end

def sort_halves(left, right)
  sorted = []
  until left.empty? || right.empty?
    until right.empty?
      if left[0] >= right[0]
        sorted << right.shift
      else
        sorted << left.shift
        break
      end
    end
  end

  unless left.empty?
    left.each do |e|
      sorted << e
    end
  end
  unless right.empty?
    right.each do |e|
      sorted << e
    end
  end
  sorted
end
