def solution(a)
	sum = a.reduce(:+)
	sumL, sumR = 0, sum
	minimalDiff = nil
	a.pop	# don't need it
	a.each do|val|
		sumL += val
		sumR -= val
		diff = (sumL - sumR).abs
		minimalDiff = diff if not minimalDiff or diff < minimalDiff
	end
	return minimalDiff
end

a = Array.new
lines = readlines
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(a)

