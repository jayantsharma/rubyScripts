def solution(a,b)

	if (2*a - b) % 3 == 0
		m = (2*a - b) / 3
	else
		return -1
	end

	if (2*b - a) % 3 == 0
		n = (2*b - a) / 3
	else
		return -1
	end

	moves = m.abs + n.abs

	if moves > 100000000
		return -2
	end

	return moves
	
end

a = Array.new
lines = readlines
a = lines.shift.chomp.to_i
b = lines.shift.chomp.to_i
puts solution(a,b)

