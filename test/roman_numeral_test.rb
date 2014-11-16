require "minitest/autorun"
require_relative "../lib/roman_numeral"

class RomanNumeralTest < Minitest::Test

  def test_should_convert_one_symbol_to_number
    roman = RomanNumeral.new
    number = roman.convert("I")
    assert_equal(1, number)
  end

  def test_should_convert_two_symbols_to_number
    roman = RomanNumeral.new
    number = roman.convert("II")
    assert_equal(2, number)
  end

  def test_should_understand_four_symbols
    roman = RomanNumeral.new
    number = roman.convert("XXII")
    assert_equal(22, number)
  end

end