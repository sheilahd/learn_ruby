def echo(word)
    word
end

def shout(word)  
    word.upcase
end

def repeat(word, number = 2)
    array = []
    (1..number).each {array << (word)}
    array.join(" ")
end

def start_of_word(word, num = 2)
    word[0, num]
end
    
def first_word(statement)
    statement_array = statement.split(" ")
    statement_array[0]
end

def titleize(str)
	stop_words = ["and", "over", "the"]
    title_array = str.split(" ")
	title_array.each do |title|
    stop_words.each do |word|
        if title.downcase != word
        title.capitalize!
        else
        title.downcase!
        break
        end
    end
	end
title_array[0].capitalize!
title = title_array.join(" ")
end
