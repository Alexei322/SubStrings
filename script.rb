def substrings(word, user_dictionary)
    return_hash = {}
    split_word = word.split(" ")
    split_word.each do |w|
      user_dictionary.each do |e|
        if w.downcase.include?(e)
            return_hash[e] = return_hash[e] == nil ? 1 : return_hash[e] + 1
        end
      end
    end
    return_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)