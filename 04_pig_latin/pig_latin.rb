def translate(string)
  array = string.split(" ")
  words_trans = array.map{|word| translate_word(word)}
complete_trans = words_trans.join(" ")
    if complete_trans.include?(".")
      complete_trans.capitalize
    else
      complete_trans
    end
end

def translate_word(word)
alphab = ("a".."z").to_a
vowels = ["a", "e", "i", "o", "u"]
consonants = alphab - vowels
punctuation = ['.', ',', ';', '?', '!', ':']

    if vowels.include?(word[0])
      final_word = "#{word}ay"
    elsif word[0..1] == "qu"
     final_word = word[2..-1] + "quay"
    elsif word[0..2] == "squ"
      final_word = word[3..-1] + "squay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) &&
    consonants.include?(word[2])
      final_word = word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      final_word = word[2..-1] + word[0..1] + "ay"
    else consonants.include?(word[0])
      final_word = word[1..-1] + word[0] + "ay"
    end
  punctuation.each do |mark|
    if final_word.include?(mark)
      final_word.delete!(mark)
      final_word << mark
    end
  end
  
  final_word
    
end
p translate("apple,  Square, queen!  fer che schmidt.")
  


