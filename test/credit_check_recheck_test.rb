require 'pry'
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

    output = check.double

    assert_equal [7, 18, 9, 4, 7, 6, 9, 16, 7, 2, 3], output
  end

  def test_it_sums_double_digits
    check = CreditCheck.new("79927398713")

    output = check.turn_to_single
    
    assert_equal [7, 9, 9, 4, 7, 6, 9, 7, 7, 2, 3], output
  end

  def test_it_sums_all_digits
    check = CreditCheck.new("79927398713")

    output = check.sums

    assert_equal 70, output
  end

  def test_its_a_valid_card_number
    check = CreditCheck.new("79927398713")

    output = check.valid?

    assert output
  end

  def test_number_cards_are_valid
    check_v0 = CreditCheck.new("5541808923795240")
    check_v1 = CreditCheck.new("4024007136512380")
    check_v2 = CreditCheck.new("6011797668867828")
    check_inv0 = CreditCheck.new("5541801923795240")
    check_inv1 = CreditCheck.new("4024007106512380")
    check_inv2 = CreditCheck.new("6011797668868728")

    assert check_v0.valid?
    assert check_v1.valid?
    assert check_v2.valid?
    refute check_inv0.valid?
    refute check_inv0.valid?
    refute check_inv0.valid?
  end

  def test_if_it_works_for_American_Express
    check_ae_v = CreditCheck.new("342804633855673")
    check_ae_inv = CreditCheck.new("342801633855673")

    assert check_ae_v.valid?
    refute check_ae_inv.valid?
  end
end

