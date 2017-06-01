#write your code here
def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, times=2)
	((string + ' ' ) * times).strip
end

def start_of_word(string, num)
	string[0...num]
end

def first_word(string)
	string.split(' ').first 
end

#def titleize(string)
#	little_words = ['a', 'an', 'in', 'on','of','to','the']
#	string.split(' ').map{ |word| little_words.include?(word) && (string.split(' ')[0] != word) ? word : word.capitalize }.join(' ')
#end

def titleize(s)
	words = s.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end