class Zeller
    def self.calculate(date, month, year)
        q = date
        if month == 1
            month = 13
        elsif month == 2
            month = 14
        end
        m = month
        if month == 13 || 14
            y = year -1
        else
            y = year
        end
        weekday = (q + (((m+1)*26)/10) + y + (y/4) + (6*((y/100))) + (y/400)) % 7
        if weekday == 0
            final = "Saturday"
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
