require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/ssaunier"

user_serialized = URI.open(url).read
puts user_serialized
user = JSON.parse(user_serialized)

puts '/////////////////'

p user

puts "#{user["name"]} - #{user["bio"]}"
