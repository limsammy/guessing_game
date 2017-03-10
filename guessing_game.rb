require "pry"

puts "I have generated a random number for you to guess, what is your guess?"

# generate random number between 1 and 100
class Number

	attr_reader :value

	def initialize
		@value = rand(1..100)
	end

end

# prompt user to guess number
@n = Number.new

def game
	loop do
		print("Please input your guess > ")
		input = gets.chomp.to_i
		if(input != @n.value)
			puts "Guess again..."
		else
			puts "You guessed #{input} correctly!"
			break
		end
	end
end

game()