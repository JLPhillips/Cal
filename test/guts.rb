class Guts
    def self.monthify(month)
        if month == 1
            final = "January"
        elsif month == 2
            final = "February"
        elsif month == 3
            final = "March"
        elsif month == 4
            final = "April"
        elsif month == 5
            final = "May"
        elsif month == 6
            final = "June"
        elsif month == 7
            final = "July"
        elsif month == 8
            final = "August"
        elsif month == 9
            final = "September"
        elsif month == 10
            final = "October"
        elsif month == 11
            final = "November"
        elsif month == 12
            final = "December"
        end
        return final
    end

    def self.yearline1(fd1, fd2, fd3, m1, m2, m3, year)
        line = firstline(fd1)
        line2 = firstline(fd2)
        line3 = firstline(fd3)
        space1 = " "
        space2 = " "
        line_array = [line, space1, line2, space2,  line3]
        puts line_array.join("")
    end

    def self.yearline2(fd1, fd2, fd3, m1, m2, m3, year)
        line = secondline(fd1)
        line2 = secondline(fd2)
        line3 = secondline(fd3)
        line_array = [line, line2, line3]
        puts line_array.join("")
    end

    def self.yearline3(fd1, fd2, fd3, m1, m2, m3, year)
        line = thirdline(fd1)
        line2 = thirdline(fd2)
        line3 = thirdline(fd3)
        line_array = [line, line2, line3]
        puts line_array.join("")
    end

   def self.yearline4(fd1, fd2, fd3, m1, m2, m3, year)
        line = fourthline(fd1)
        line2 = fourthline(fd2)
        line3 = fourthline(fd3)
        line_array = [line, line2, line3]
        puts line_array.join("")
    end

   def self.yearline5(fd1, fd2, fd3, m1, m2, m3, year)
        line = fifthline(fd1,m1,year)
        line2 = fifthline(fd2,m2, year)
        line3 = fifthline(fd3, m3, year)
        line_array = [line, line2, line3]
        puts line_array.join("")
    end

   def self.yearline6(fd1, fd2, fd3, m1, m2, m3, year)
        line = sixthline(fd1,m1)
        line2 = sixthline(fd2,m2)
        line3 = sixthline(fd3,m3)
        line_array = [line, line2, line3]
        puts line_array.join("")
    end

    def self.month(firstday, month, year)
        puts firstline(firstday)
        puts secondline(firstday)
        puts thirdline(firstday)
        puts fourthline(firstday)
        puts fifthline(firstday, month, year)
        puts sixthline(firstday, month)
    end

    def  self.leapyear(year)
        year = year.to_i
        if (((year % 4) == 0) && ((year % 100) != 0)) || ((year % 400) == 0)
            return true
        else
            return false
        end  
    end

    def self.firstline(firstday)
        if firstday == 1
            print "\s1\s\s2\s\s3\s\s4\s\s5\s\s6\s\s7\s\s"
        elsif firstday == 2
            print "\s\s\s\s1\s\s2\s\s3\s\s4\s\s5\s\s6\s\s"
        elsif firstday == 3
            print "\s\s\s\s\s\s\s1\s\s2\s\s3\s\s4\s\s5\s\s" 
        elsif firstday == 4
            print "\s\s\s\s\s\s\s\s\s\s1\s\s2\s\s3\s\s4\s\s"
        elsif firstday == 5
            print "\s\s\s\s\s\s\s\s\s\s\s\s\s1\s\s2\s\s3\s\s"
        elsif firstday == 6
            print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s1\s\s2\s\s"
        elsif firstday == 0
            print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s1\s\s" 
        end
    end

    def self.secondline(firstday)
        if firstday == 1 
            print "\s8\s\s9\s10\s11\s12\s13\s14\s\s"
        elsif firstday == 2
            print "\s7\s\s8\s\s9\s10\s11\s12\s13\s\s"
        elsif firstday == 3
            print "\s6\s\s7\s\s8\s\s9\s10\s11\s12\s\s"
        elsif firstday == 4
            print "\s5\s\s6\s\s7\s\s8\s\s9\s10\s11\s\s"
        elsif firstday == 5
            print "\s4\s\s5\s\s6\s\s7\s\s8\s\s9\s10\s\s"
        elsif firstday == 6
            print "\s3\s\s4\s\s5\s\s6\s\s7\s\s8\s\s9\s\s"
        elsif firstday == 0
            print "\s2\s\s3\s\s4\s\s5\s\s6\s\s7\s\s8\s\s"
        end
    end

    def self.thirdline(firstday)
        if firstday == 1
            print "15\s16\s17\s18\s19\s20\s21\s\s"
        elsif firstday == 2
            print "14\s15\s16\s17\s18\s19\s20\s\s"
        elsif firstday == 3
            print "13\s14\s15\s16\s17\s18\s19\s\s"
        elsif firstday == 4
            print "12\s13\s14\s15\s16\s17\s18\s\s"
        elsif firstday == 5
            print "11\s12\s13\s14\s15\s16\s17\s\s"
        elsif firstday == 6
            print "10\s11\s12\s13\s14\s15\s16\s\s"
        elsif firstday == 0
            print "\s9\s10\s11\s12\s13\s14\s15\s\s" 
        end
    end

    def self.fourthline(firstday)
        if firstday == 1
            print "22\s23\s24\s25\s26\s27\s28\s\s"
        elsif firstday == 2
            print "21\s22\s23\s24\s25\s26\s27\s\s"
        elsif firstday == 3
            print "20\s21\s22\s23\s24\s25\s26\s\s"
        elsif firstday == 4
            print "19\s20\s21\s22\s23\s24\s25\s\s"
        elsif firstday == 5
            print "18\s19\s20\s21\s22\s23\s24\s\s"
        elsif firstday == 6
            print "17\s18\s19\s20\s21\s22\s23\s\s"
        elsif firstday == 0
            print "16\s17\s18\s19\s20\s21\s22\s\s"           
        end
    end

    def self.fifthline(firstday, month, year)
        thirty = [4,6,9,11]
        thirtyone = [1,3,5,7,8,10,12]
        if thirtyone.include?(month)
            if firstday == 1
                print "29\s30\s31\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 2
                print "28\s29\s30\s31\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 3
                print "27\s28\s29\s30\s31\s\s\s\s\s\s\s\s"
            elsif firstday == 4
                print "26\s27\s28\s29\s30\s31\s\s\s\s\s"
            elsif firstday == 5
                print "25\s26\s27\s28\s29\s30\s31\s\s"
            elsif firstday == 6
                print "24\s25\s26\s27\s28\s29\s30\s\s"
            elsif firstday == 0
                print "23\s24\s25\s26\s27\s28\s29\s\s"
            end
        elsif thirty.include?(month)
            if firstday == 1
                print "29\s30\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 2
                print "28\s29\s30\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 3
                print "27\s28\s29\s30\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 4
                print "26\s27\s28\s29\s30\s\s\s\s\s\s\s\s"
            elsif firstday == 5
                print "25\s26\s27\s28\s29\s30\s\s\s\s\s"
            elsif firstday == 6
                print "24\s25\s26\s27\s28\s29\s30\s\s"
            elsif firstday == 0
                print "23\s24\s25\s26\s27\s28\s29\s\s"
            end
        else
            if leapyear(year) == true
                if firstday  == 1
                    print "29\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 2
                    print "28\s29\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 3
                    print "27\s28\s29\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 4
                    print "26\s27\s28\s29\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 5
                    print "25\s26\s27\s28\s29\s\s\s\s\s\s\s\s"
                elsif firstday == 6
                    print "24\s25\s26\s27\s28\s29\s\s\s\s\s"
                elsif firstday == 0
                    print "23\s24\s25\s26\s27\s28\s29\s\s"        
                end
            elsif leapyear(year) == false 
                if firstday  == 1
                    print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 2
                    print "28\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 3
                    print "27\s28\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 4
                    print "26\s27\s28\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 5
                    print "25\s26\s27\s28\s\s\s\s\s\s\s\s\s\s\s"
                elsif firstday == 6
                    print "24\s25\s26\s27\s28\s\s\s\s\s\s\s\s"
                elsif firstday == 0
                    print "23\s24\s25\s26\s27\s28\s\s\s\s\s"        
                end
            end 
        end
    end

    def self.sixthline(firstday, month)
        thirty = [4,6,9,11]
        thirtyone = [1,3,5,7,8,10,12]
        if thirty.include?(month)
            if firstday != 0
                print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            else
                print "30\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            end
        elsif thirtyone.include?(month)
            if firstday != 6 && firstday != 0
                print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 6
                print "31\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
            elsif firstday == 0
                print "30\s31\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s" 
            end
        elsif month == 2
            print "\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s\s"
        end
    end
end
