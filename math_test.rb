require "minitest/autorun"
require_relative "math.rb"  #You have to change this what is in quotes to the name of your rb files

class TestMath < Minitest::Test  #The word Math is the name of your project

	def test_assert_that_1_equals_1
		assert_equal(1,1)
	end

	def test_assert_that_1_plus_1_equal_2
		assert_equal(2,addition(1,1))
	end

	def test_assert_that_8_minus_1_equal_7
		assert_equal(7,subtraction(8,1))
	end
end