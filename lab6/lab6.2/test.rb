# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'func'

# class for test
class MyTest < Minitest::Test
  def test_first
    result = condition(0.1)
    assert_in_delta(14.0 / 9, result, 0.1)
  end

  def test_second
    result = condition(0.0001)
    assert_in_delta(14.0 / 9, result, 0.0001)
  end
end
