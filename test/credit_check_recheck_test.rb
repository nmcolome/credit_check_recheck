
require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_recheck'

class CreditCheckTest < Minitest::Test

  def test_if_creates_an_instance
    check = CreditCheck.new("79927398713")

    assert_instance_of CreditCheck, check
  end

  def test_if_doubles_every_other_number
    check = CreditCheck.new("79927398713")

    output = check.double_every_2nd_digit

    assert_equal [7, 18, 9, 4, 7, 6, 9, 16, 7], output
  end

  def test_it_sums_double_digits
    skip
    check = CreditCheck.new("79927398713")

    output = check.turn_to_single
    
    assert_equal [7, 9, 9, 4, 7, 6, 9, 7, 7], output
  end

  def test_it_sums_all_digits
    skip
    check = CreditCheck.new("79927398713")

    output = check.sums

    assert_equal 70, output
  end

  def test_its_a_valid_card_number
    skip
    check = CreditCheck.new("79927398713")

    output = check.validate

    assert output
  end
end

