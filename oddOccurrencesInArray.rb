def solution(a)
	lookup = Hash.new
	a.each do |el|
		if not lookup[el]	# doesn't exist in Hash
			lookup[el] = 1
		else			# does exist
			lookup.delete(el)
		end
	end
	return lookup.find {|k, v| return k if v == 1}
end

a = Array.new
lines = readlines
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(a)

