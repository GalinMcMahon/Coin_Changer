class Fixnum
  define_method(:coins) do
    change = self
    number_of_coins = [] #final number of coins

    if change.>=(25) #quarters code
      number_of_coins.push((change-change.%(25))/25)
      change = change.-(change-change.%(25))
    elsif change.%(10) == 0 #dimes code
      number_of_coins.push(change/10)
    elsif change.%(5) == 0 #nickels code
      number_of_coins.push(change/5)
    end
      number_of_coins.push(change)


  number_of_coins
  end
end
