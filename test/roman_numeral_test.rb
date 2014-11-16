require "minitest/autorun"
require_relative "../lib/roman_numeral"

class RomanNumeralTest < Minitest::Test

  def test_should_convert_symbol_I_to_number
    roman = RomanNumeral.new
    number = roman.convert("I")
    assert_equal(1, number)
  end

  def test_should_convert_symbol_II_to_number
    roman = RomanNumeral.new
    number = roman.convert("II")
    assert_equal(2, number)
  end

end