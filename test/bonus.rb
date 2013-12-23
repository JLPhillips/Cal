class Bonus
    def self.monthify(month)
        if month == "jan" || 1
            month = "January"
        elsif month == "feb" || 2
            month = "February"
        elsif month == "mar" || 3
            month = "March"
        elsif month == "apr" || 4
            month = "April"
        elsif month == "may" || 5
            month = "May"
        elsif month == "jun" || 6
            month = "June"
        elsif month == "jul" || 7
            month = "July"
        elsif month == "aug" || 8
            month = "August"
        elsif month == "sep" || 9
            month = "September"
        elsif month == "oct" || 10
            month = "October"
        elsif month == "nov" || 11
            month = "November"
        elsif month == "dec" || 12
            month = "December"
        end
        return month
    end
end

    # [" ","1"," "," ","2"," "," ","3"," "," ","4"," "," ","5"," "," ","6"," "," " ,"7", " "]
    # 12.times do print "\s" end
    # puts " Su Mo Tu We Th Fr Sa "
    # date_array = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
