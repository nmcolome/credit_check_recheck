require 'pry'
class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    @valid = false
  end

  def validate
    double
    turn_to_single
    sums
    valid?
  end

  def double
    if card_number.to_i.odd?
      double_every_2nd_digit_if_odd
    else
      double_every_2nd_digit_if_even
    end
  end

  def double_every_2nd_digit_if_odd
      numbers = card_number.split(//)
      doubled_n = []
      (0...numbers.length).each do |index|
        if index % 2 == 0
          doubled_n << numbers[index].to_i
        else
          doubled_n << numbers[index].to_i * 2
        end
      end
      doubled_n
  end

  def double_every_2nd_digit_if_even
      numbers = card_number.split(//)
      doubled_n = []
      (0...numbers.length).each do |index|
        if index % 2 == 1
          doubled_n << numbers[index].to_i
        else
          doubled_n << numbers[index].to_i * 2
        end
      end
      doubled_n
  end

  def turn_to_single
    double.map do |number|
      # binding.pry
      if number > 9
        number - 9 
      else
        number
      end
    end
  end

  def sums
    turn_to_single.inject(0) {|sum, num| sum + num}
  end

  def valid?
    if sums % 10 == 0
      @valid = true
    else
      @valid
    end
  end
end
