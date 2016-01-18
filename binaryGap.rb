def solution(n)
	mGap, gap = 0, 0
	prevDigit = nil
	rep = ""
	while n > 0
		digit = n % 2
		if prevDigit == 1
			gap = 1 if digit == 0
		elsif prevDigit == 0
			if digit == 0
				gap += 1
			else	# sequence finished
				mGap = gap if gap > mGap
				gap = 0	# reset
			end
		end
		prevDigit = digit if prevDigit or digit == 1
		n = n / 2 
		rep = digit.to_s + rep
	end
	return mGap, rep
end

puts "Maximal binary gap : #{solution(gets.chomp.to_i)}"
