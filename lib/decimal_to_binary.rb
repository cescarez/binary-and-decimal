# A method named `decimal_to_binary` that receives as input an array of size 8.
# The decimal is a random number between 0 and 255 ( = 2^8 + 2^7 + 2^6 + 2^5 + 2^4 + 2^3 + 2^2 + 2^1 + 2^0)
# A binary number translation is returned.

def decimal_to_binary(decimal_value)
  num_bits = 8
  binary_array = Array.new(num_bits, 0)
  remainder = decimal_value
  binary_array.length.times do |i|
    quotient = (remainder / (2 ** (((binary_array.length - 1) - i))))
    if (quotient >= 1)
      binary_array[i] = 1
      remainder = (remainder - (2 ** ((binary_array.length - 1) - i)))
    end
    rescue ZeroDivisionError
  end
  return binary_array
end
