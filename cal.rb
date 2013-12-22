require_relative "test/zeller"

month = ARGV[0]
# year = ARGV[1]

line3 = ["","1","","","2","","","3","","","4","","","5","","","6","","","7"]

month = month[0..2].chomp.downcase
if month == "jan"
  puts "       January      "
  puts "Su Mo Tu We Th Fr Sa"
  
end