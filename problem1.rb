def solution(word)
	possibleAnagrams = word.chars.to_a.permutation.map(&:join)
	answer = Array.new
	
	file = File.new("wl.txt", "r")
	lines = file.readlines
	lines.each do |line| 
		word = line.chomp
		possibleAnagrams.include?(word)
		answer.push(word) if possibleAnagrams.include?(word)
	end

	return answer
end

puts "----", solution("beat")



#a = Array.new
#lines = readlines
#lines.each { |line| a.push(line.chomp.to_i) }
#puts solution(a)

