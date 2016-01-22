# def hashFunction(word)
# 	letters = "acdegilmnoprstuw"
# 	hash = 7
# 	word.each_char do |letter|
# 		hash = hash * 37 + letters.index(letter)
# 	end
# 	return hash
# end
	
def decipherWord(hash)
	letters = "acdegilmnoprstuw"
	word = ""
	while hash > 7
		letter = nil
		# ruby way to-do this would have some kind of a filter function; for now, this will do 
		for i in 0...letters.length
			# only one letter can satisfy this condition, since string length < 37
			if (hash - i) % 37 == 0
				hash = (hash - i) / 37
				letter = letters[i]
				break
			end
		end
#		debug
#		puts "#{hash} : #{letter}"  
		return nil if letter == nil
		word = letter + word
	end
	return word
end

# take arg on cmd
num = ARGV.first.to_i
puts decipherWord(num)
