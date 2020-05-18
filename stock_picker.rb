def stock_picker(list_of_prices)
  profits = {}
  list_of_prices.each_with_index do |price, day_number|
    highest_in_range = list_of_prices[day_number..-1].max
    profit = highest_in_range - price
    profits[profit] = [day_number, list_of_prices.index(highest_in_range)]
  end
  profits.max
end

def output_centered(text)
  puts text.center(80)
end

###

output_centered "I'm that stock market black-box everyone so much desires" 
output_centered "Give me a list of prices separated by commas for each day"
output_centered "and I'll tell you what to do with your money..."
list_of_prices = gets.chomp.gsub(/\s*/, '').split(',').map {|price| price.to_i}
best_investment = stock_picker(list_of_prices)

if best_investment.first.zero?
  investment_advice = "There will be better times to invest... Keep your money safe and come back some other day." 
else
  investment_advice = "The wisest investment opportunity is on day #{best_investment.last[0]}, followed by a sell on day #{best_investment.last[1]} for a profit of $#{best_investment.first}."
end

puts investment_advice
puts "Trust me *wink wink*"