require_relative "guts"

class Zeller
    def self.calculate(date,month,year)
        date = date.to_i
        month = month.to_i
        year = year.to_i
        if month == 1
            month = 13
            year -= 1
        elsif month == 2
            month = 14
            year -= 1
        end
        k = year%100
        j = year/100
        weekday = ((date)+((13*(month+1))/5) +k+(k/4)+(j/4)+(5*j))%7
        return weekday
    end

    def self.actuate(date,month,year)
        weekday = calculate(date, month, year)
        if weekday == 0
            final = date_array[0]
        elsif weekday == 1
            final = "Sunday"        
        elsif weekday == 2
            final = "Monday"
         elsif weekday == 3
            final = "Tuesday"        
        elsif weekday == 4
            final = "Wednesday"
        elsif weekday == 5
            final = "Thursday"        
        elsif weekday == 6
            final = "Friday"
        end
        return final
    end
end

class Print
    def self.month(month,year)
        firstday = Zeller.calculate(1, month, year)
        dayline = "Su Mo Tu We Th Fr Sa "
        month =  month.to_i
        fullmonth = Guts.monthify(month)
        puts "#{fullmonth} #{year}".center(21)
        puts dayline
        puts Guts.month(firstday, month, year)
    end
    
    def self.year(year)
        firstday1 = Zeller.calculate(1, 1, year)
        firstday2 = Zeller.calculate(1, 2, year)
        firstday3 = Zeller.calculate(1, 3, year)
        firstday4 = Zeller.calculate(1, 4, year)
        firstday5 = Zeller.calculate(1, 5, year)
        firstday6 = Zeller.calculate(1, 6, year)
        firstday7 = Zeller.calculate(1, 7, year)
        firstday8 = Zeller.calculate(1, 8, year)
        firstday9 = Zeller.calculate(1, 9, year)
        firstday10 = Zeller.calculate(1, 10, year)
        firstday11 = Zeller.calculate(1, 11, year)
        firstday12 = Zeller.calculate(1, 12, year)
        dayline = "Su Mo Tu We Th Fr Sa "

        # month1 = Guts.month(firstday1, 1, year)
        # month2 = Guts.month(firstday2, 2, year)
        # month3 = Guts.month(firstday3, 3, year)

        puts "#{year}".center(65)
        puts ' '
        puts "January".center(21) + " " + "February".center(21) + " " + "March".center(21) 
        puts dayline + " " + dayline + " " + dayline
        print  Guts.yearline1(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        print  Guts.yearline2(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        print  Guts.yearline3(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        print  Guts.yearline4(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        print  Guts.yearline5(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        puts  Guts.yearline6(firstday1, firstday2, firstday3, 1, 2, 3 , year)
        
        puts "April".center(21) + " " + "May".center(21) + " " + "June".center(21) 
        puts dayline + " " + dayline + " " + dayline
        print  Guts.yearline1(firstday4, firstday5, firstday6, 4, 5, 6 , year)
        print  Guts.yearline2(firstday4, firstday5, firstday6, 4, 5, 6 , year)
        print  Guts.yearline3(firstday4, firstday5, firstday6, 4, 5, 6 , year)
        print  Guts.yearline4(firstday4, firstday5, firstday6, 4, 5, 6 , year)
        print  Guts.yearline5(firstday4, firstday5, firstday6, 4, 5, 6 , year)
        puts  Guts.yearline6(firstday4, firstday5, firstday6, 4, 5, 6 , year)

        puts "July".center(21) + " " + "August".center(21) + " " + "September".center(21) 
        puts dayline + " " + dayline + " " + dayline
        print  Guts.yearline1(firstday7, firstday8, firstday9, 7, 8, 9 , year)
        print  Guts.yearline2(firstday7, firstday8, firstday9, 7, 8, 9 , year)
        print  Guts.yearline3(firstday7, firstday8, firstday9, 7, 8, 9 , year)
        print  Guts.yearline4(firstday7, firstday8, firstday9, 7, 8, 9 , year)
        print  Guts.yearline5(firstday7, firstday8, firstday9, 7, 8, 9 , year)
        puts  Guts.yearline6(firstday7, firstday8, firstday9, 7, 8, 9 , year)


        puts "October".center(21) + " " + "November".center(21) + " " + "December".center(21) 
        puts dayline + " " + dayline + " " + dayline
        print  Guts.yearline1(firstday10, firstday11, firstday12, 10, 11, 12 , year)
        print  Guts.yearline2(firstday10, firstday11, firstday12, 10, 11, 12 , year)
        print  Guts.yearline3(firstday10, firstday11, firstday12, 10, 11, 12 , year)
        print  Guts.yearline4(firstday10, firstday11, firstday12, 10, 11, 12 , year)
        print  Guts.yearline5(firstday10, firstday11, firstday12, 10, 11, 12 , year)
        puts  Guts.yearline6(firstday10, firstday11, firstday12, 10, 11, 12 , year)



        # puts ' '
        # firstday = Zeller.calculate(1, 1, year)
        # dayline = "Su Mo Tu We Th Fr Sa "
        # month =  month.to_i
        # fullmonth = Guts.monthify(month)
        # monthline = "#{fullmonth}".center(21) 
        # puts "#{year}".center(65)
        # 4.times do
        #     puts monthline + " " + monthline + " " +  monthline
        #     puts dayline + " " + dayline + " " + dayline
        #     puts actualmonth + " " + actualmonth + " " + actualmonth
        # end
    end
end












