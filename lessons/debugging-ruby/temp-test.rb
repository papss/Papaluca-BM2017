require 'minitest/autorun'
require 'minitest/pride'
require_relative 'tempurature.rb'

class TestTemperature < MiniTest::TestTemperature

  def test_f_to_c
    expected_value = 10
    actual_value = f_to_c(50)
    # calls the method to test actual_value

    assert_equal(expected_value, actual_value)
    # compares the two results to determine if theyre equal
  end
end
