class Currency


  def initialize(total_value, currency_type)
    @total = total_value                      # => 50, 50, 50
    @type = currency_type                     # => "dollars", "yen", "euro"
  end                                         # => :initialize

  def total
    return @total
  end              # => :total
  
  def type
    return @type
  end             # => :type

  def == (other_type)
    @total == other_type.total_value && @type == other_type.currency_type  # ~> NoMethodError: undefined method `total_value' for #<Currency:0x007ffdc3825be0 @total=50, @type="yen">
  end                                                                      # => :==


end  # => :==

american_money = Currency.new(50,"dollars")  # => #<Currency:0x007ffdc3826e78 @total=50, @type="dollars">
japanese_money = Currency.new(50,"yen")      # => #<Currency:0x007ffdc3825be0 @total=50, @type="yen">
european_money = Currency.new(50,"euro")     # => #<Currency:0x007ffdc38248a8 @total=50, @type="euro">

american_money. == (japanese_money)

# ~> NoMethodError
# ~> undefined method `total_value' for #<Currency:0x007ffdc3825be0 @total=50, @type="yen">
# ~>
# ~> /Users/alexshelton/Desktop/Projects_Folder/Currency.rb:22:in `=='
# ~> /Users/alexshelton/Desktop/Projects_Folder/Currency.rb:32:in `<main>'
