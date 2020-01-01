def translate(string)
  array = string.split(" ")
  words_trans = array.map{|word| translate_word(word)}
  final = words_trans.join(" ")
  # final = words_trans.join(" ")
  # punctuation = ['.', ',', ';', '?', '!', ':']
  # punctuation.each do |mark|
  #   if final.include?(mark)
  # final.delete!(mark)
  # final << mark 
    #   end
   # # end  
    if final.include? (".")
  final.delete! (".")
  final << "."
  final.capitalize
  else
  final
  end
end
def translate_word(word)
alphab = ("a".."z").to_a + ("A".."Z").to_a
vowels = ["a", "e", "i", "o", "u", "A", "E", "I","O","U"] 
consonants = alphab - vowels
    if vowels.include?(word[0])
      "#{word}ay"
    elsif word[0..1] == "qu"
      word[2..-1] + "quay"
    elsif word[0..1] == "Qu"
      word[2..-1] + "quay"
    elsif word[0..2] == "squ" 
      word[3..-1] + "squay"
    elsif word[0..2] == "Squ" 
       word[3..-1] + "squay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) &&
    consonants.include?(word[2])
      word[3..-1] + word[0..2].downcase + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    else consonants.include?(word[0])
     word[1..-1] + word[0] + "ay"
    end
end
p translate("apple Apple Square Queen queen, Schmidt.")