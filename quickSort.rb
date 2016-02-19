def quickSort(array, l, h)
  if h > l
	pivot = array[h]
	i, j = l-1, l

	while j <= h
	  if array[j] <= pivot # pivot also swapped in the end
		i += 1
		if i < j
		  tmp = array[i]
		  array[i] = array[j]
		  array[j] = tmp
		end
	  end
	  j += 1
	end
	quickSort(array, l, i-1) if i-1 > l
	quickSort(array, i+1, h) if h > i+1
  end
end

lines = readlines
n = lines.shift.chomp.to_i
array = Array.new
lines.each { |line| array.push(line.chomp.to_i) }
quickSort(array, 0, n-1)

puts array
