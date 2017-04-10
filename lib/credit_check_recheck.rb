class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
    @valid = false
  end
  
  def double_every_2nd_digit
    if @card_number.odd?
      @card_number.split(//)
    end
  end
end
