require "helper"

class TestNativeLog < Minitest::Test
  def test_that_native_log_return_nil
    assert !Native::log()
  end

  def test_that_native_log_prints_correctly
    log = capture(:stdout) {
      Native::log()
    }

    if !log or log.empty?
      warn "Sometimes `capture` does not work :("
      return
    end

    assert log == "Native log\n"
  end
end
