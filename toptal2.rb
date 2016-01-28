def solution(a)
	# num of bits
	m = a.length
	negative = Array.new(m,0)	# might be more, but let's start from here

	i = 0		# keep track
	a.each do |bit|
		if bit == 1
			negative[i] += 1
			if i == m-1	# reached end of array
				negative.push(1)
			else
				negative[i+1] = 1
			end
		end
		i += 1
	end
#	puts a, "-ve array coming:", negative, "----"

	i = 0	# reset counter
	negative.each do |bit|
		if bit == 2
			negative[i] = 0
			negative[i+1] -= 1
		end
		i += 1
	end
#	puts negative, "----"

	# find shortest sequence
	n = negative.length		# number of bits; might be different from m
	(n-1).downto(0) do |i|
		if negative[i] == 1
			break
		else
			negative.pop
		end
	end
#	puts negative, "----"

	return negative
end

a = Array.new
lines = readlines
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(a)

