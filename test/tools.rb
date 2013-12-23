require_relative "bonus"

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

class Time
    # def self.print_month(month,year)
    #     dayline = "Su Mo Tu We Th Fr Sa "
    #     line1 = " 1  2  3  4  5  6  7 "
    #     month = month[0..2].chomp.downcase unless month.is_a?(String)
    #     month = Bonus.monthify(month)
    #     puts "#{month} #{year}".center(22)
    #     puts dayline
    #     puts line1
    # end
    
    # def self.print_year(year)
    #     true
    # end    

    def self.print_month(month,year)
        dayline = "Su Mo Tu We Th Fr Sa "
        line1 = " 1  2  3  4  5  6  7 "
        month = month[0..2].chomp.downcase unless month.is_a?(String)
        month = Bonus.monthify(month)
        puts "#{month} #{year}".center(22)
        puts dayline
        puts line1
    end
    
    def self.print_year(year)
        true
    end
end















