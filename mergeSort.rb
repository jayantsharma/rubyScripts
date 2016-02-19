def merge(array, l, m, h)
  cap1 = m-l+1
  cap2 = h-m
  arr1 = Array.new(cap1)
  arr2 = Array.new(cap2)
  for i in l..m
    arr1[i-l] = array[i]
  end
  for j in m+1..h
    arr2[j-m-1] = array[j]
  end
  i, j, k = 0, 0, l
  while i < cap1 and j < cap2
    if arr1[i] < arr2[j]
      array[k] = arr1[i]
      i+=1
    else
      array[k] = arr2[j]
      j+=1
    end
    k+=1
  end
  while i < cap1
    array[k] = arr1[i]
    i+=1
    k+=1
  end
  while j < cap2
    array[k] = arr2[j]
    j+=1
    k+=1
  end
end

def mergeSort(array, l, h)
  if h > l
	mid = l + (h-l)/2
	mergeSort(array, l, mid)
	mergeSort(array, mid+1, h)
	merge(array, l, mid, h)
  end
end

lines = readlines
n = lines.shift.chomp.to_i
array = Array.new
lines.each { |line| array.push(line.chomp.to_i) }
mergeSort(array, 0, n-1)

puts array
