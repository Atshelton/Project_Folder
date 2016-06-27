class Currency

  def initialize(total_value, currency_type)
    @total = total_value                      # => 1.0, 5.0, 10.0, 20.0, 50.0, 100.0, 1.0, 5.0, 10.0, 20.0, 50.0, 100.0, 1.0, 5.0, 10.0, 20.0, 50.0, 100.0, 35.0, 25.0
    @type = currency_type                     # => :USD, :USD, :USD, :USD, :USD, :USD, :YEN, :YEN, :YEN, :YEN, :YEN, :YEN, :EURO, :EURO, :EURO, :EURO, :EURO, :EURO, :YEN, :USD
  end                                         # => :initialize

  def total
    return @total  # => 1.0, 5.0
  end              # => :total

  def type=(other)
    @type = other
  end               # => :type=

  def type
    return @type  # => :EURO, :USD
  end             # => :type

  def ==(other)
    @total == other.total && @type == other.type
  end                                             # => :==

  def +(other)
    if @type == other.type                                             # => true
      that_total = @total + other.total                                # => 25.0
      Currency.new(that_total, @type)                                  # => #<Currency:0x007fc68112ac38 @total=25.0, @type=:USD>
    else
      raise DifferentCurrencyCodeError, "Must convert currency first"
    end                                                                # => #<Currency:0x007fc68112ac38 @total=25.0, @type=:USD>
  end                                                                  # => :+
  def -(other)
    if @type == other.type
      this_total = @total - other.total
      Curency.new(this_total, @type)
    else
      raise DifferentCurrencyCodeError, "Must convert currency first"
    end
  end                                                                  # => :-

  def *(number)
      new_total = @total * number     # => 35.0
      Currency.new(new_total, @type)  # => #<Currency:0x007fc681133e50 @total=35.0, @type=:YEN>

  end  # => :*
end    # => :*

class DifferentCurrencyCodeError < StandardError  # => StandardError
end                                               # => nil

usd = Currency.new(1.0,:USD)       # => #<Currency:0x007fc681140a10 @total=1.0, @type=:USD>
usd2 = Currency.new(5.0,:USD)      # => #<Currency:0x007fc681140100 @total=5.0, @type=:USD>
usd3 = Currency.new(10.0,:USD)     # => #<Currency:0x007fc681142590 @total=10.0, @type=:USD>
usd4 = Currency.new(20.0,:USD)     # => #<Currency:0x007fc68113bc18 @total=20.0, @type=:USD>
usd5 = Currency.new(50.0,:USD)     # => #<Currency:0x007fc68113b3f8 @total=50.0, @type=:USD>
usd6 = Currency.new(100.0,:USD)    # => #<Currency:0x007fc68113a8b8 @total=100.0, @type=:USD>
jpy = Currency.new(1.0,:YEN)       # => #<Currency:0x007fc6811397b0 @total=1.0, @type=:YEN>
jpy2 = Currency.new(5.0,:YEN)      # => #<Currency:0x007fc6811390d0 @total=5.0, @type=:YEN>
jpy3 = Currency.new(10.0,:YEN)     # => #<Currency:0x007fc6811389a0 @total=10.0, @type=:YEN>
jpy4 = Currency.new(20.0,:YEN)     # => #<Currency:0x007fc6811382e8 @total=20.0, @type=:YEN>
jpy5 = Currency.new(50.0,:YEN)     # => #<Currency:0x007fc681138a90 @total=50.0, @type=:YEN>
jpy6 = Currency.new(100.0,:YEN)    # => #<Currency:0x007fc68113ab10 @total=100.0, @type=:YEN>
euro = Currency.new(1.0,:EURO)     # => #<Currency:0x007fc681133e28 @total=1.0, @type=:EURO>
euro2 = Currency.new(5.0,:EURO)    # => #<Currency:0x007fc681133810 @total=5.0, @type=:EURO>
euro3 = Currency.new(10.0,:EURO)   # => #<Currency:0x007fc681133310 @total=10.0, @type=:EURO>
euro4 = Currency.new(20.0,:EURO)   # => #<Currency:0x007fc681132938 @total=20.0, @type=:EURO>
euro5 = Currency.new(50.0,:EURO)   # => #<Currency:0x007fc681132398 @total=50.0, @type=:EURO>
euro6 = Currency.new(100.0,:EURO)  # => #<Currency:0x007fc681131e48 @total=100.0, @type=:EURO>


usd.total  # => 1.0
euro.type  # => :EURO



jpy2.*(7)     # => #<Currency:0x007fc681133e50 @total=35.0, @type=:YEN>
usd4.+(usd2)  # => #<Currency:0x007fc68112ac38 @total=25.0, @type=:USD>
