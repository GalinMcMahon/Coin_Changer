class Fixnum
  define_method(:coins) do
    change = self
    number_of_coins = 0 #final number of coins

    if change.%(25) == 0 #quarters code
      number_of_coins = change./(25)
    elsif change.%(10) == 0 #dimes code
      number_of_coins = change./(10)
    elsif change.%(5) == 0 #nickels code
      number_of_coins = change./(5)
    else #pennies code
      number_of_coins = change
    end
  number_of_coins
  end
end
