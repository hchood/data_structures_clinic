require 'csv'
require 'pry'

phone_nos = {}

CSV.foreach('phone_numbers.csv', headers: true) do |row|
  phone_nos[row["name"]] = {
    home: row["home"],
    mobile: row["mobile"],
    work: row["work"]
  }
end

phone_nos.each do |name, numbers|
  puts "#{name} - home: #{numbers[:home]}, mobile: #{numbers[:mobile]}"
end
