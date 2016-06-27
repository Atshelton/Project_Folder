require_relative './Currency.rb'  # => true

class Currency_Exchanger
  def initialize(rates)
    @rate = rates                                                   # => {:USD=>1.0, :EUR=>0.74, :YEN=>101.09}
  end                                                               # => :initialize
  def convert(currency, new_currency)
    valid = @rate.include? new_currency                             # => true, true, true
    if valid                                                        # => true, true, true
    other_rate = @rate[new_currency]                                # => 1.0, 101.09, 0.74
    converted = currency.*(other_rate)                              # => #<Currency:0x007fe0da9606f0 @total=2.0, @type=:USD>, #<Currency:0x007fe0da95be70 @total=707.63, @type=:USD>, #<Currency:0x007fe0da95a8e0 @total=9.62, @type=:USD>
    Currency.new(converted.total, new_currency)                     # => #<Currency:0x007fe0da9603f8 @total=2.0, @type=:USD>, #<Currency:0x007fe0da95bbc8 @total=707.63, @type=:YEN>, #<Currency:0x007fe0da95a408 @total=9.62, @type=:EUR>
    else
      raise UnkownCurrencyCodeError, "Please enter a Known Currency"
    end                                                             # => #<Currency:0x007fe0da9603f8 @total=2.0, @type=:USD>, #<Currency:0x007fe0da95bbc8 @total=707.63, @type=:YEN>, #<Currency:0x007fe0da95a408 @total=9.62, @type=:EUR>
  end                                                               # => :convert
end

class UnkownCurrencyCodeError < StandardError
end                                                       # => :convert
cvrt = Currency_Exchanger.new({USD: 1.0, EUR: 0.74, YEN: 101.09 })  # => #<Currency_Exchanger:0x007fe0da962900 @rate={:USD=>1.0, :EUR=>0.74, :YEN=>101.09}>
cvrt.convert(Currency.new(2, :USD), :USD) == Currency.new(2, :USD)  # => true

cvrt.convert(Currency.new(7, :USD), :YEN) == Currency.new(707.63, :YEN)  # => true

cvrt.convert(Currency.new(13, :USD), :EUR) == Currency.new(9.62, :EUR)  # => true
