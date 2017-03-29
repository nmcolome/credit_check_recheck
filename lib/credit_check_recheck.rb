class CreditCheck

  attr_reader :card_number

  def initialize(card_number)
    @card_number = card_number
  end
  
  def double
    @card_number.split(//)
    
  end
end
