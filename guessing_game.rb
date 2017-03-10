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

	if(@n.value.even?)
		hint = "even"
	else
		hint = "odd"
	end

	loop do

		print("Please input your guess or enter the secret cheat command > ")
		input = gets.chomp
		
		if(input.to_s == "c" || input.to_s == "cheat")
			puts "Expected answer: #{@n.value}"
		elsif(input.to_i > @n.value)
			puts "Your guess is MORE THAN than the actual value!"
			puts "Hint: Your number is #{hint}."
			puts "Please guess again..."
		elsif(input.to_i < @n.value)
			puts "Your guess is LESS THAN than the actual value!"
			puts "Hint: Your number is #{hint}."
			puts "Please guess again..."
		elsif(input.to_i == @n.value)
			puts "You guessed #{input} correctly!"
			break
		end

	end

end

game()