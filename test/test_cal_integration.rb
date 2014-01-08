# require_relative 'guts'
# require_relative 'tools'
# require 'minitest/autorun'


# class TestCheersIntegration < MiniTest::Unit::TestCase

#   def test_a_name_with_no_vowels
#     shell_output = ""
#     IO.popen('ruby cal.rb', 'r+') do |pipe|
#       pipe.puts("1 2014")
#       pipe.close_write
#       shell_output = pipe.read
#     end
#     expected_output = <<EOS
#     January 2014
# Su Mo Tu We Th Fr Sa
#           1  2  3  4
#  5  6  7  8  9 10 11
# 12 13 14 15 16 17 18
# 19 20 21 22 23 24 25
# 26 27 28 29 30 31
# EOS
#     assert_equal shell_output, expected_output
#   end

  # def test_a_name_with_no_vowels_a_different_way
  #   shell_output = ""
  #   IO.popen('ruby demo.rb', 'r+') do |pipe|
  #     pipe.puts("brt")
  #     pipe.close_write
  #     shell_output = pipe.read
  #   end
  #   assert_includes_in_order shell_output, "Give me a B!", "Give me an R!", "Give me a T!"
  # end
# end
