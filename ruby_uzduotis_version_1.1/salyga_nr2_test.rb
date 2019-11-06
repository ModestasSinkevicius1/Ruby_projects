require_relative 'salyga_nr2'
require 'test/unit'

# This class tests salyga_nr1 functions*/
class GrandinineTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end

  def test_chain_recursion_return_expected_value
    expected = 0.62
    actual = (chain_recursion(1.0, 1.0, 1.0) * 100).round / 100.0
    assert_equal(expected, actual)
  end

  def test_chain_recursion_and_chain_cycle_expected_values_are_equal
    expected = chain_cycle(5.0)
    actual = (chain_recursion(1.0, 5.0, 1.0) * 100).round / 100.0
    assert_equal(expected, actual)
  end

  def test_chain_recursion_expect_return_exception_when_entering_nan
    assert_raise do
      (chain_recursion(1.0, 'j', 1.0) * 100).round / 100.0
    end
  end

  def test_chain_recursion_expect_return_exception_when_entering_zero
    assert_raise do
      (chain_recursion(1.0, 0.0, 1.0) * 100).round / 100.0
    end
  end

  def test_chain_cycle_return_expected_value
    expected = 0.62
    actual = chain_cycle(1.0)
    assert_equal(expected, actual)
  end

  def test_chain_cycle_expect_return_exception_when_entering_nan
    assert_raise do
      (chain_cycle(1.0, 'j', 1.0) * 100).round / 100.0
    end
  end

  def test_chain_cycle_expect_return_exception_when_entering_zero
    assert_raise do
      (chain_cycle(1.0, 0.0, 1.0) * 100).round / 100.0
    end
  end
end
