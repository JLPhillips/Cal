require_relative 'tools'
require 'minitest/autorun'

class TestZeller < MiniTest::Unit::TestCase

  # def test_weekday
  #   # day1 = Zeller.weekday("Tuesday")
  #   #Trying them with wacky case usage.
  #   # day2 = Zeller.weekday("SaTuRdAy")
  #   #Getting the reverse value
  #   # day3 = Zeller.weekday(6)
  #   # #With strings.
  #   # day4 = Zeller.weekday("4")
  #   day5 = Zeller.weekday(4)

  #   # assert_equal 3, day1
  #   # assert_equal 0, day2
  #   # assert_equal "Friday", day3
  #   # assert_equal "Wednesday", day4
  #   assert_equal 4, day5
  # end

  # def test_date
  #   #Date strings with suffixes to integers.
  #   # date1 = Zeller.date("24th")
  #   #Single digits with suffixes, too.
  #   # date2 = Zeller.date("1st")
  #   #One more.
  #   # date3 = Zeller.date("23rd")
  #   #If just a number is entered, it's returned the same.
  #   date4 = Zeller.date(4)
  #   date5 = Zeller.date("4")

  #   # assert_equal 24, date1
  #   # assert_equal 1, date2
  #   # assert_equal 23, date3
  #   assert_equal 4, date4
  #   assert_equal 4, date5
  # end

  # def test_month
  #   #Getting the Zeller number for months.
  #   # month1 = Zeller.month("January")
  #   #Also with regular month numbers.
  #   month2 = Zeller.month(2)
  #   #Strings too.
  #   # month3 = Zeller.month("5")
  #   month4 = Zeller.month(5)
  #   month5 = Zeller.month("2")
  #   month6 = Zeller.month("5")

  #   # assert_equal 13, month1
  #   assert_equal 14, month2
  #   # assert_equal 5, month3
  #   assert_equal 5, month4
  #   assert_equal 14, month5
  #   assert_equal 5, month6
  # end

  # def test_century_year
  #   #Getting the century year number.
  #   year1 = Zeller.century_year(2014)
  #   #Doing so with strings.
  #   # year2 = Zeller.century_year("1986")
  #   year3 = Zeller.century_year("2014")

  #   assert_equal 14, year1
  #   # assert_equal 86, year2
  #   assert_equal 14, year3
  # end

  # def test_century
  #   #Zeller century number from a year.
  #   year1 = Zeller.century(2014)
  #   #String again.
  #   # year2 = Zeller.century("1592")
  #   #Using actual century numbers.
  #   century1 = Zeller.century(13)
  #   #Finally, normal usage as string.
  #   # century2 = Zeller.century("21st")

  #   assert_equal 20, year1
  #   # assert_equal 15, year2
  #   assert_equal 12, century1
  #   # assert_equal 20, century2
  # end

  def test_zeller_equation
    #Now we're going to see if it all works.
    weekday = Zeller.calculate(19, 12, 2013)
    # weekday1 = Zeller.calculate("19th","December","2013","21st")
    # weekday2 = Zeller.calculate("18th","December","2013","21st")
    # weekday3 = Zeller.calculate("20th","December","2013","21st")
    # weekday4 = Zeller.calculate("5th", "March", "2013", "21st")
    weekday5 = Zeller.calculate("19", "12", "2013")

    assert_equal 5, weekday
    # assert_equal "Thursday", weekday1
    # assert_equal "Wednesday", weekday2
    # assert_equal "Friday", weekday3
    # assert_equal "Blahday", weekday4
    assert_equal 5, weekday5
  end
end