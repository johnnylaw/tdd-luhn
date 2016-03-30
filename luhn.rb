module Luhn
  def self.valid?(num)
    digits = [num / 10, num % 10]
    (digits[0] * 2 + digits[1]) % 10 == 0
  end
end