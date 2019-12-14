def translate(word)
word_array = word.split(" ")
    word_array.each do |divword|
        if divword.start_with?("a", "e", "i", "o", "u")
            word_array = divword + "ay"
        end
            word_array.join(" ")
    end
end