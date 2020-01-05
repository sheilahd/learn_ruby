
class Book
  attr_accessor :title
    def title=(input_title)
    words_array = input_title.split(" ")
    words_array = [words_array[0].capitalize] + words_array[1..-1].map do |word|
      non_cap = ["the", "a", "an", "and", "in", "of"]
      if non_cap.include? word
        word
      else
        word.capitalize
      end
    end
    @title = words_array.join(" ")
  end
end



    
title1 = Book.new
title1.title = "war and peace"
p title1.title
