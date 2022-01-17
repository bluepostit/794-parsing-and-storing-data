require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

json_data = File.read(filepath)
p JSON.parse(json_data)


# Storing JSON
cities = {
  title: 'Our favourite cities',
  cities: [
    {
      name: 'Tel Aviv',
      country: 'Israel',
      language: ['Hebrew', 'English']
    },
    {
      name: 'Madrid',
      country: 'Spain',
      language: 'Spanish'
    }
  ]
}

filepath = "data/cities.json"

File.open(filepath, 'wb') do |file|
  file.write(JSON.pretty_generate(cities))
end
