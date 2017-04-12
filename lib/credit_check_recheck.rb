class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    @valid = false
  end

  def validate
    double_every_2nd_digit
    turn_to_single
    sums
    valid?
  end

  def double_every_2nd_digit
    doubled_n = []
    (-(card_number.length)..-1).each do |index|
      if index % 2 == 0
        doubled_n << card_number[index].to_i * 2
      else
        doubled_n << card_number[index].to_i
      end
    end
    doubled_n
  end

  def turn_to_single
    double_every_2nd_digit.map do |number|
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
