require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "binary to decimal" do
  it "From 153 to 10011011" do
    decimal = 155
    # expected_binary_array = [1, 0, 0, 1, 1, 0, 1, 1]
    expected_binary_array = decimal.to_s(2)

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 45 to 00101101" do
    decimal = 45
    # expected_binary_array = [0, 0, 1, 0, 1, 1, 0, 1]
    expected_binary_array = decimal.to_s(2)

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From 129 to 10000001" do
    decimal = 129
    # expected_binary_array = [1, 0, 0, 0, 0, 0, 0, 1]
    expected_binary_array = decimal.to_s(2)

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end

  it "From random decimal to binary" do
    num_bits = 8
    max_decimal = 0
    num_bits.times do |i|
      random_binary_array << rand(0..1)
      max_decimal += (2 ** (((num_bits - 1)) - i))
    end
    decimal = rand(0..max_decimal)
    expected_binary_array = decimal.to_s(2)

    expect(decimal_to_binary(decimal)).must_equal expected_binary_array
  end