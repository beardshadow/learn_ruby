#write your code here
def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(arr)
	arr.empty? ? 0 : arr.inject(:+)
end