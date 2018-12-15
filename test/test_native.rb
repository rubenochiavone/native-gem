require "minitest/autorun"
require "native"

class TestNative < Minitest::Test
  def test_that_native_log_method_exists
    assert Native.respond_to? :log
  end

  def test_that_native_array_method_exists
    assert Native.respond_to? :array
  end

  def test_that_native_log_return_nil
    assert !Native::log()
  end

  def test_that_native_array_return_an_array
    assert Native::array().is_a? Array
  end

  def test_that_native_array_return_an_array_with_length_ten
    assert Native::array().size == 10
  end
end