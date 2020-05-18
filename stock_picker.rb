def stock_picker(list_of_prices)
  results = {}
  list_of_prices.each_with_index do |price, day_number|
    highest_in_range = list_of_prices[day_number..-1].max
    profit = highest_in_range - price
    results[profit] = [day_number, list_of_prices.index(highest_in_range)]
  end
  results.max.last
end

p stock_picker([17,3,6,9,15,8,6,1,10])