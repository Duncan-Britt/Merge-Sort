def merge(arr1, arr2)
  new = []
  i = 0
  j = 0
  while i < arr1.length && j < arr2.length
    if arr1[i] < arr2[j]
      new << arr1[i]
      i += 1
    else
      new << arr2[j]
      j += 1
    end
    break if arr1[i].nil? || arr2[j].nil?
  end
  if i < arr1.length
    until i == arr1.length
      new << arr1[i]
      i += 1
    end
  else
    until j == arr2.length
      new << arr2[j]
      j += 1
    end
  end
  new
end

def merge_sort(arr)
  return arr if arr.size == 1
  mid = arr.length / 2
  left = arr[0..(mid-1)]
  right = arr[mid..-1]

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end
