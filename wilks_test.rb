require 'minitest/autorun'
require_relative './wilks'

class TestWilksCalc < Minitest::Test
  def test_male_wilks
    assert_equal 414.96, WilksCalc.new('M', 90, 650).calculate
    assert_equal 410.29, WilksCalc.new('M', 125, 720).calculate
    assert_equal 309.69, WilksCalc.new('M', 70.5, 415.5).calculate
  end

  def test_female_wilks
    assert_equal 412.86, WilksCalc.new('F', 70, 415).calculate
    assert_equal 596.67, WilksCalc.new('F', 55, 500).calculate
    assert_equal 280.79, WilksCalc.new('F', 82.5, 312).calculate
  end
end