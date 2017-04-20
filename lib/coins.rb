class Fixnum
  define_method(:coins) do
    # if change.>=(25) #quarters code
    #   number_of_coins.push((change-change.%(25))/25)
    #   change = change.-(change-change.%(25))
    # else
    #   number_of_coins.push(0)
    # end
    # if change.>=(10) #dimes code
    #   number_of_coins.push((change-change.%(10))/10)
    #   change = change.-(change-change.%(10))
    # else
    #   number_of_coins.push(0)
    # end
    # if change.>=(5) #nickels code
    #   number_of_coins.push((change-change.%(5))/5)
    #   change = change.-(change-change.%(5))
    # else
    #   number_of_coins.push(0) # nickels placeholder
    # end
    pennies = self
    final_coins_array = [] #final number of coins

    #available - quarters: 78 dimes: 13 nickels: 100
    available_coins = [78,13,100]
    unavailable_coins = []

    coin_values = [25,10,5]
    coin_values.each_with_index() do |coin_value, index|
      total_necessary_pennies = pennies-pennies.%(coin_value)
      total_necessary_coins = total_necessary_pennies/coin_value

      if total_necessary_coins.<(available_coins[index])
        final_coins_array.push(total_necessary_coins)
        pennies = pennies.-(total_necessary_pennies)
        unavailable_coins.push(false)
      else
        final_coins_array.push(available_coins[index]) # takes all avaible quarters out, passes rem pennies
        pennies = pennies.-((coin_value).*(available_coins[index])) # takes away available quarter total from the needed coin amt, passes running total back to self
        unavailable_coins.push(true)
      end

    end
    final_coins_array.push(pennies) #number of pennies remaining

    [final_coins_array, unavailable_coins]
  end
end
