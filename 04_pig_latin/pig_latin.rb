def translate(string)
  array = string.split(" ")
  words_trans = array.map{|word| translate_word(word)}
  words_trans.join(" ")
end

def translate_word(word)
alphab = ("a".."z").to_a
vowels = ["a", "e", "i", "o", "u"]
consonants = alphab - vowels
    if vowels.include?(word[0])
      "#{word}ay"
    elsif word[0..1] == "qu"
      word[2..-1] + "quay"
    elsif word[0..2] == "squ"
      word[3..-1] + "squay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    else consonants.include?(word[0])
     word[1..-1] + word[0] + "ay"
    end
end
p translate("apple square")



