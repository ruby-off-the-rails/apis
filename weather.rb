require 'http'
require 'awesome_print'

p "Please enter a city"
user_city = gets.chomp

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=#{user_city}&units=imperial&APPID=")

# ap response.parse['name']

temperature = response.parse['main']['temp']
description = response.parse['weather'][0]['description']
city = response.parse['name']

system "clear"

p "The weather in #{city} is #{temperature} and #{description}"

# The weather in chicago is 29 degrees and rainy
