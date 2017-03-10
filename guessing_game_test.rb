require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "guessing_game"

class GameTest < Minitest::Test

	def test_number_exists
		number = Number.new

		assert number
	end

	def test_number_is_in_range
		number = Number.new

		assert_includes(1..100, number.value)
	end

end