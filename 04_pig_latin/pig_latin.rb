#write your code here
def translate(word)
	words = word.split(' ').map do |word|
		if %w(a e i o u).include?(word.split('').first) == true
			word + 'ay'
		elsif word.start_with?('thr', 'sch', 'shr', 'skr', 'spl', 'spr', 'str', 'squ')
			first_three = word.slice!(0..2)
			word + first_three + 'ay'
		elsif word.start_with?('br', 'ch', 'fr', 'th', 'sh', 'wh', 'qu')
			first_two = word.slice!(0..1)
			word + first_two + 'ay'
		else
			first = word.split('').shift
			a = word.split('').slice!(1..-1)
			(a << first + 'ay').join 
		end
	end
	words.join(' ')
end