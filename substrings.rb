def substrings(text, dictionary)
	stats = Hash.new(0)
	words = text.split
	words.each do |word|
		word = word.downcase
		for i in 0..(word.length - 1)
   			for j in (i)..(word.length - 1)
				if (dictionary.include?(word[i..j]))
					stats[word[i..j]] += 1
				end
   			end
   		end
	end
	stats.sort_by { |string, count| count }
	p stats
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
word = "Below"
substrings("Howdy partner, sit down! How's it going?", dictionary)