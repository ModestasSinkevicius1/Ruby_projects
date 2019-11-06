require_relative 'salyga_nr1'
require 'test/unit'

# This class tests salyga_nr1 functions*/
class TrikampisTest < Test::Unit::TestCase
  # def setup
  # end

  # def teardown
  # end

  def test_trikampio_plotas_return_expected_value
    expected = trikampio_plotas(5.0, 5.0, 5.0)
    assert_equal(expected, 10.83)
  end

  def test_trikampis_egzistuoja_return_true
    expected = trikampis_egzistuoja(1.0, 1.0, 1.0)
    assert(expected, 'Trikampis egzistuoja')
  end

  def test_trikampis_egzistuoja_return_false
    expected = trikampis_egzistuoja(1.0, 0.0, 1.0)
    assert_not_equal(expected, true)
  end

  def test_trikampis_egzistuoja_return_expected_value
    expected = false
    actual = trikampis_egzistuoja('j', 1, 1)
    assert_equal(expected, actual)
  end

  def test_trikampis_egzistuoja_return_expected_value_when_entering_nil
    expected = false
    actual = trikampis_egzistuoja(nil, nil, nil)
    assert_equal(expected, actual)
  end

  def test_trikampio_tipas_return_trikampis_yra_lygiakrastis
    expected = 'Tai lygiakrastis trikampis'
    actual = trikampio_tipas(5, 5, 5)
    assert_equal(expected, actual)
  end

  def test_trikampio_tipas_return_trikampis_yra_lygiasonis
    expected = 'Tai lygiasonis trikampis'
    actual = trikampio_tipas(5, 4, 5)
    assert_equal(expected, actual)
  end

  def test_trikampio_tipas_return_trikampis_yra_ivairiakrastis
    expected = 'Tai ivairiakrastis trikampis'
    actual = trikampio_tipas(5, 4, 6)
    assert_equal(expected, actual)
  end
end
