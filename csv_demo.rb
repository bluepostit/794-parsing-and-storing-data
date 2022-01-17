require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# Without headers (ignoring headers)
index = 0
CSV.foreach(filepath) do |row|
  puts "#{row[0]} #{row[1]} played #{row[2]}" unless index.zero?
  index += 1
end

puts '~~~~~~~~~~~~~~'

# With headers
CSV.foreach(filepath, headers: :first_row) do |row|
  puts "#{row['First Name']} played #{row['Instrument']}"
end

# Storing CSV
filepath = 'data/cities.csv'

cities = [
  ['Tel Aviv', 'Israel', 'Hebrew'],
  ['Petah Tikva', 'Israel', 'Hebrew']
]

CSV.open(filepath, 'wb') do |csv|
  csv << ['City', 'Country', 'Language']
  cities.each do |city|
    csv << city
  end
end
