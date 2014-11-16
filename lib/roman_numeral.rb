class RomanNumeral

  TABLE = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def convert(symbol)
    symbol.split("").map { |s| TABLE[s] }.reduce(:+)
  end

end

roman_numeral = RomanNumeral.new

puts roman_numeral.convert("VV")