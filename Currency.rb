class Currency

  def initialize(total_value, currency_type)
    @total = total_value                      # => 50, 50, 50
    @type = currency_type                     # => "dollars", "yen", "euro"
  end                                         # => :initialize

def total
  return @total
end              # => :total

def equal
  return @currency_equality
end                          # => :equal

def type
  return @type
end             # => :type

end  # => :type

american_money = Currency.new(50,"dollars")  # => #<Currency:0x007fde1a153e20 @total=50, @type="dollars">
japanese_money = Currency.new(50,"yen")      # => #<Currency:0x007fde1a153498 @total=50, @type="yen">
european_money = Currency.new(50,"euro")     # => #<Currency:0x007fde1a152ca0 @total=50, @type="euro">
