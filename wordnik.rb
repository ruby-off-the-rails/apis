require 'http'
require 'awesome_print'
# Create a new ruby file called dictionary_app.rb
# The program should ask the user to enter a word, then use the wordnik API to show the word’s definition: https://developer.wordnik.com/docs#!/word/getDefinitions
# Once that works, have it also display the top example and pronunciation (browse through the documentation to the top example and pronunciation).
# Bonus: Write your program in a loop such that the user can keep entering new words without having to restart the program. Give them the option of entering q to quit.

  # use wordnik api to find the definition
  # user enters a word
  # use wordnik to display top example
# use wordnik to display pronunciation
# make a loop so user can continue entering words

while true

  p "enter a word"
  user_word = gets.chomp

  if user_word == "q"
    break
  end

  # user_word.downcase!

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")


# definitions = response.parse

# definitions.each do |definition|
#   p definition['text']
# end

# text = response.parse[0]['text']

# p text

# response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/topExample?useCanonical=false&api_key=")

# top_example = response.parse['text']
# p top_example

# response = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_word}/pronunciations?useCanonical=false&limit=50&api_key=")

# pronunciation = response.parse[0]['raw']

# p pronunciation
end
