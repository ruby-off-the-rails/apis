require 'http'
require 'awesome_print'

response = HTTP.get("https://data.ny.gov/resource/xjya-f8ng.json")

markets = response.parse

markets.each do |market|
  p market['market_name'].reverse
end
