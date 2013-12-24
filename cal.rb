require_relative "test/tools"

a = ARGV[0]
b = ARGV[1]

if a && b
    print Print.month(a, b)
elsif a.to_s.size == 4
    print Print.year(a)
end