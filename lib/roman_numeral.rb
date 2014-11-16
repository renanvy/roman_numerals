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
    acumulator = 0
    the_right_number = 0

    symbol.split("").reverse.each do |s|
      current = TABLE[s]

      multiplier = 1
      multiplier = -1 if current < the_right_number

      acumulator += current * multiplier

      the_right_number = current
    end

    acumulator
  end

end

roman_numeral = RomanNumeral.new

puts roman_numeral.convert("VV")