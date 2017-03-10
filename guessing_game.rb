puts "I have generated a random number for you to guess, what is your guess?"

# generate random number between 1 and 100
class Number

	attr_reader :value

	def initialize
		@value = rand(1..100)
	end
	
end