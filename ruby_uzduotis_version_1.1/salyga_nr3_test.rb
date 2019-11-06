require_relative 'salyga_nr3'
require 'test/unit'

# This class tests salyga_nr1 functions*/
class ElektrosSaskaitaTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end

  def test_elektros_saskaita_return_expected_value_when_value_is_fiften
    expected = 0.5
    actual = elektros_saskaita(50.0)
    assert_equal(expected, actual)
  end

  def test_elektros_saskaita_return_expected_value_when_value_is_one_hundred
    expected = 1.75
    actual = elektros_saskaita(100.0)
    assert_equal(expected, actual)
  end

  def test_elektros_saskaita_return_expected_value_when_value_is_one_thousand
    expected = 20.68
    actual = elektros_saskaita(1000.0)
    assert_equal(expected, actual)
  end

  def test_elektros_saskaita_return_expected_value_when_entering_less_than_zero
    expected = 0.0
    actual = elektros_saskaita(-100.0)
    assert_equal(expected, actual)
  end

  def test_elektros_saskaita_return_expected_value_when_entering_letters
    expected = 0.0
    actual = elektros_saskaita('j')
    assert_equal(expected, actual)
  end

  def test_elektros_saskaita_return_expected_value_when_entering_nil
    expected = 0.0
    actual = elektros_saskaita(nil)
    assert_equal(expected, actual)
  end
end
