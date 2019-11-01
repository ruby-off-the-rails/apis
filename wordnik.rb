require 'http'

response = HTTP.get("https://api.wordnik.com/v4/word.json/Halloween/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

p response.parse
