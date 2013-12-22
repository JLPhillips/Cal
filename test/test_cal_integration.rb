require_relative 'zeller'
require 'minitest/autorun'


class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_a_name_with_no_vowels
    shell_output = ""
    IO.popen('ruby cal.rb', 'r+') do |pipe|
      pipe.puts("January")
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
       January      
Su Mo Tu We Th Fr Sa
EOS
    assert_equal shell_output, expected_output
  end

  # def test_a_name_with_no_vowels_a_different_way
  #   shell_output = ""
  #   IO.popen('ruby demo.rb', 'r+') do |pipe|
  #     pipe.puts("brt")
  #     pipe.close_write
  #     shell_output = pipe.read
  #   end
  #   assert_includes_in_order shell_output, "Give me a B!", "Give me an R!", "Give me a T!"
  # end
end
