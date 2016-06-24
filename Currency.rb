class Currency

  def initialize(total_value, currency_type)
    @total = total_value                      # => 50, 50, 50
    @type = currency_type                     # => "dollars", "yen", "euro"
  end                                         # => :initialize

def total
  return @total
end              # => :total

def equal
  return @currency_equality  # => nil
end                          # => :equal

def type
  return @type
end             # => :type

end  # => :type

american_money = Currency.new(50,"dollars")  # => #<Currency:0x007f811b023b88 @total=50, @type="dollars">
japanese_money = Currency.new(50,"yen")      # => #<Currency:0x007f811b023200 @total=50, @type="yen">
european_money = Currency.new(50,"euro")     # => #<Currency:0x007f811b022a08 @total=50, @type="euro">       # => false
