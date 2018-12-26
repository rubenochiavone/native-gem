require "helper"

class TestNativeArray < Minitest::Test
  def test_that_native_array_return_an_array
    assert Native::array().is_a? Array
  end

  def test_that_native_array_return_an_array_with_length_ten
    assert Native::array().size == 10
  end

  def test_that_native_array_elements_are_string
    Native::array().each do |elem|
      assert elem.is_a? String
    end
  end

  def test_that_native_array_return_corret_strings
    Native::array().each_with_index do |elem, index|
      assert elem == "Native str #{index}"
    end
  end
end
