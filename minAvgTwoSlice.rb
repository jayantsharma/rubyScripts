def solution(a)
	sum, lengthCounter = 0.0, 0
	minSum = a[0] + a[1]
	minAvg, minAvgIndex = minSum/2.0, 1
	avgsArray = a.map { |el| 
		lengthCounter += 1
		sum += el
		avg = sum / lengthCounter
		minAvg, minAvgIndex, minSum = avg, lengthCounter-1, sum if avg < minAvg and lengthCounter > 1
	        avg
	}
	print "initial processing : minAvgIndex = #{minAvgIndex} \n #{avgsArray}\n"

	leastIndex, leastAvg = 0, minAvg
	for i in 0...minAvgIndex
		average = (minSum - (i+1) * avgsArray[i] + a[i]) / 
				(minAvgIndex - i + 1)
		leastIndex, leastAvg = i, average if average < leastAvg
	end
	print "leastAvg = #{leastAvg}\n"

	return leastIndex
end


a = Array.new
lines = readlines
lines.each { |line| a.push(line.chomp.to_i) }
puts solution(a)
