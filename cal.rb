require_relative "test/tools"

month = ARGV[0]
year = ARGV[1]

if month || month && year
    puts Time.print_month(month, year)
elsif year and !month
    puts Time.print_year(year)
end
        
puts "YUP"
puts "YUP"
puts "YUP"
puts "YUP"
puts "YUP"
            
