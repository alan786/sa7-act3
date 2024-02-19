require 'csv'

# Initialize an empty array to store the parsed data
data = []

# Open the CSV file and parse its content
CSV.foreach('data.csv', headers: true) do |row|
  # Convert each row into a hash and append it to the data array
  data << row.to_hash
end

# Print the array of hashes
p data#.inspect
