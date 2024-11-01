def stock_picker(array)
  max_profit = 0
  result = []

  array.each_with_index do |buy_price, buy_day|
    (buy_day + 1...array.length).each do |sell_day|
      sell_price = array[sell_day]
      profit = sell_price - buy_price

      if profit > max_profit
        max_profit = profit
        result = [max_profit, buy_day, sell_day]
      end
    end
  end

  puts "It's best to buy between day #{result[1]} and day #{result[2]} for a profit of #{result.first}"
end

stock_picker([17,3,6,9,15,8,6,1,10])