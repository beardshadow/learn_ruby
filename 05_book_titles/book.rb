class Book
	attr_reader :title 

	def title=(title)
		words = title.split(' ').map{ |word|
			little_words = %w(and in on the an a of)
			if little_words.include?(word)
				word
			else
				word.capitalize
			end
		}
		words.first.capitalize!
		@title = words.join(' ') 
	end
end