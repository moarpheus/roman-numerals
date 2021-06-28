class Fixnum
  VALUES = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }


  def to_roman
    output = []
    num = self

    VALUES.keys.each do |key|
      while((num - key) >= 0)
        num = num - key
        output << VALUES[key]
      end
    end
    output.join
  end
end
