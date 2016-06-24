class Currency
  def initialize(total_value, currency_type)
    @total = total_value                      # => 1.0, 5.0, 10.0, 20.0, 50.0, 100.0, 1.0, 5.0, 10.0, 20.0, 50.0, 100.0, 1.0, 5.0, 10.0, 20.0, 50.0, 100.0
    @type = currency_type                     # => :USD, :USD, :USD, :USD, :USD, :USD, :YEN, :YEN, :YEN, :YEN, :YEN, :YEN, :EURO, :EURO, :EURO, :EURO, :EURO, :EURO
  end                                         # => :initialize

  def total
    return @total  # => 1.0, 50.0
  end              # => :total

  def type
    return @type  # => :EURO
  end             # => :type

  def ==(other)
    @total == other.total && @type == other.type
  end                                             # => :==

  def +(other)
    @total += other.total
  end                      # => :+
  def -(other)
    @total -= other.total
  end                      # => :-

  def *(other)
    @total *= other.total  # => 250.0
  end                      # => :*
end                        # => :*



usd = Currency.new(1.0,:USD)       # => #<Currency:0x007fa7c3909490 @total=1.0, @type=:USD>
usd2 = Currency.new(5.0,:USD)      # => #<Currency:0x007fa7c3908720 @total=5.0, @type=:USD>
usd3 = Currency.new(10.0,:USD)     # => #<Currency:0x007fa7c3909f08 @total=10.0, @type=:USD>
usd4 = Currency.new(20.0,:USD)     # => #<Currency:0x007fa7c390b470 @total=20.0, @type=:USD>
usd5 = Currency.new(50.0,:USD)     # => #<Currency:0x007fa7c3903bf8 @total=50.0, @type=:USD>
usd6 = Currency.new(100.0,:USD)    # => #<Currency:0x007fa7c3903540 @total=100.0, @type=:USD>
jpy = Currency.new(1.0,:YEN)       # => #<Currency:0x007fa7c3901678 @total=1.0, @type=:YEN>
jpy2 = Currency.new(5.0,:YEN)      # => #<Currency:0x007fa7c3901088 @total=5.0, @type=:YEN>
jpy3 = Currency.new(10.0,:YEN)     # => #<Currency:0x007fa7c3900b88 @total=10.0, @type=:YEN>
jpy4 = Currency.new(20.0,:YEN)     # => #<Currency:0x007fa7c3900688 @total=20.0, @type=:YEN>
jpy5 = Currency.new(50.0,:YEN)     # => #<Currency:0x007fa7c3900138 @total=50.0, @type=:YEN>
jpy6 = Currency.new(100.0,:YEN)    # => #<Currency:0x007fa7c381d450 @total=100.0, @type=:YEN>
euro = Currency.new(1.0,:EURO)     # => #<Currency:0x007fa7c381cc30 @total=1.0, @type=:EURO>
euro2 = Currency.new(5.0,:EURO)    # => #<Currency:0x007fa7c381c690 @total=5.0, @type=:EURO>
euro3 = Currency.new(10.0,:EURO)   # => #<Currency:0x007fa7c381c050 @total=10.0, @type=:EURO>
euro4 = Currency.new(20.0,:EURO)   # => #<Currency:0x007fa7c417f700 @total=20.0, @type=:EURO>
euro5 = Currency.new(50.0,:EURO)   # => #<Currency:0x007fa7c417e3a0 @total=50.0, @type=:EURO>
euro6 = Currency.new(100.0,:EURO)  # => #<Currency:0x007fa7c417d608 @total=100.0, @type=:EURO>


usd.total  # => 1.0
euro.type  # => :EURO



usd2.*(usd5)  # => 250.0
