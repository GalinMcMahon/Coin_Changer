class Fixnum
  define_method(:coins) do
    change = self
    number_of_coins = [] #final number of coins

    if change.>=(25) #quarters code
      number_of_coins.push((change-change.%(25))/25)
      change = change.-(change-change.%(25))
    else
      number_of_coins.push(0)
    end
    if change.>=(10) #dimes code
      number_of_coins.push((change-change.%(10))/10)
      change = change.-(change-change.%(10))
    else
      number_of_coins.push(0)
    end
    if change.%(5) == 0 #nickels code

      number_of_coins.push(change/5)
    else
      number_of_coins.push(0)
    end
      number_of_coins.push(change) #number of pennies remaining


  number_of_coins
  end
end
