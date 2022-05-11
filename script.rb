def substrings(str, dictionary)
 dictionary.reduce(Hash.new(0)) do |counts, dict_word|
    str.downcase.split.each{ |word| counts[dict_word] +=1 if word.include?(dict_word) }
    counts
 end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)