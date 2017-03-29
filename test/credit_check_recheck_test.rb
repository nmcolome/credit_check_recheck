
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

    assert_equal [7, 18, 9, 4, 7, 6, 9, 16, 7], output
  end
end

