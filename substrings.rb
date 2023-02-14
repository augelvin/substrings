dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
    text.downcase.concat(' ') # add a space to enable split text if the substring is at the end
    list = Hash.new
    dictionary.each do |substring|
        occurance = text.split(substring).length - 1
        if occurance > 0
            list[substring] = occurance
        end
    end
    list
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)