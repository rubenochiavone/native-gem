require "helper"

class TestNative < Minitest::Test
  def test_that_native_log_method_exists
    assert Native.respond_to? :log
  end

  def test_that_native_array_method_exists
    assert Native.respond_to? :array
  end
end
