def solution(x, a)
	equals = a.reduce(0) { |initial, num| 
		if num == x 
			initial + 1
		else
			initial
		end
	}
	nonEquals = a.length - equals
	#
	# debug
	# puts equals,nonEquals

	k = 0
	equalElementsFromStart = 0
	a.each do |el|
		if el == x
			equalElementsFromStart += 1
		else
			nonEquals -= 1
		end
		k += 1
		break if equalElementsFromStart == nonEquals
	end
	return k
end

a = Array.new
lines = readlines
x = lines.shift.chomp.to_i
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(x,a)

