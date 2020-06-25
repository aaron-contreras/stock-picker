# frozen_string_literal: true

def stock_picker(list_of_prices)
  list_of_prices.each_with_object({}).with_index do |(price, profits), buying_day|
    remaining_days = list_of_prices[buying_day..-1]
    highest_in_range = remaining_days.max
    selling_day = buying_day + remaining_days.index(highest_in_range)

    profit = highest_in_range - price

    profits[profit] = [buying_day, selling_day]
    profits
  end.max_by(&:first)
end

def output_centered(text)
  puts text.center(80)
end

###

output_centered "I'm that stock market black-box everyone so much desires"
output_centered 'Give me a list of prices separated by commas for each day'
output_centered "and I'll tell you what to do with your money..."
list_of_prices = gets.chomp.gsub(/\s*/, '').split(',').map(&:to_i)

best_investment = stock_picker(list_of_prices)

if best_investment.first.zero?
  puts 'There will be better times to invest... Keep your money safe and come back some other day.'
else
  puts "The wisest investment opportunity is on day #{best_investment.last[0]},\
  followed by a sell on day #{best_investment.last[1]} for a profit of $#{best_investment.first}."
end

puts 'Trust me *wink wink*'
