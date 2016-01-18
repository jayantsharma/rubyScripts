def solution(n, a)
	base, max = 0, 0
	vals = Array.new(n, 0)
	a.each do|op|
		if 1 <= op and op <= n
			if vals[op-1] >= base
				vals[op-1] += 1
			else		# less than base, after max counter operation
				vals[op-1] = base + 1
			end
			max = vals[op-1] if vals[op-1] > max
		elsif op == n+1 	# = x
			base = max
		else
			#nothing
		end
	end
	return vals.map { |v| v >= base ? v : base }
end

a = Array.new
lines = readlines
n = lines.shift.chomp.to_i
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(n, a)
