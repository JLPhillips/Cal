class Zeller
  # def self.weekday(day)
  #   if day.is_a?(String) && day.size > 2
  #     day = day.downcase[0..1]
  #     if day == "sa"
  #       final = 0
  #     elsif day == "su"
  #       final = 1
  #     elsif day == "mo"
  #       final = 2
  #     elsif day == "tu"
  #       final = 3
  #     elsif day == "we"
  #       final = 4
  #     elsif day == "th"
  #       final = 5
  #     elsif day == "fr"
  #       final = 6
  #     end
  #   elsif day.is_a?(String) && day.size <= 2 || day.is_a?(Integer)
  #     day = day.to_i
  #     if day == 0
  #       final = "Saturday"
  #     elsif day == 1
  #       final = "Sunday"
  #     elsif day == 2
  #       final = "Monday"
  #     elsif day == 3
  #       final = "Tuesday"
  #     elsif day == 4
  #       final = "Wednesday"
  #     elsif day == 5
  #       final = "Thursday"
  #     elsif day == 6
  #       final = "Friday"
  #     end
  #   else
  #     return "Weekday Fail"
  #   end
  #   return final
  # end

  def self.date(date)
    if date.is_a?(String) && date.size == 4
      final = date[0..2].to_i
    elsif date.is_a?(String) && date.size == 3
      final = date[0..1].to_i
    elsif date.is_a?(String) && date.size < 3
      final = date.to_i
    elsif date.is_a?(Integer)
      final = date
    else
      final = "Date Fail"
    end
    return final
  end

  def self.month(month)
    if month.is_a?(String) && month.size > 2
      month = month[0..2].downcase
      if month == "jan"
        final = 13
      elsif month == "feb"
        final = 14
      elsif month == "mar"
        final = 3
      elsif month == "apr"
        final = 4
      elsif month == "may"
        final = 5
      elsif month == "jun"
        final = 6
      elsif month == "jul"
        final = 7
      elsif month == "aug"
        final = 8
      elsif month == "sep"
        final = 9
      elsif month == "oct"
        final = 10
      elsif month == "nov"
        final = 11
      elsif month == "dec"
        final = 12
      end
    elsif (month.is_a?(String) && month.size <= 2) || month.is_a?(Integer)
      month = month.to_i
      if month == 1
        final = 13
      elsif month == 2
        final = 14
      elsif month > 2
        final = month
      end
    else
      return "Month Fail"
    end
    return final
  end

  def self.century_year(year)
    if year.is_a?(String)
      year = year.to_i
    elsif year.is_a?(Integer) && year.size <= 9999
      year = year
    else
      return "Year Fail"
    end
    final = year % 100
    return final
  end

  def self.century(input)
    if input.is_a?(String)
      if input.index(/[a-zA-Z]/)
        if input.size == 4
          century = input[0..2].to_i
        elsif input.size == 3
          century = input[0..1].to_i
        end
      elsif input.size < 3
        century = input.to_i
      else
        year = input.to_i
      end
    elsif input.is_a?(Integer)
      if input < 100
        century = input
      else
        year = input
      end
    else
      return "Year/Century Fail"
    end
    final = (year / 100).floor if year
    final = century - 1 if century
    return final
  end

  def self.calculate(dat, mon, cen_year, cen)
    q = date(dat)
    p q
    m = month(mon)
    p m
    k = century_year(cen_year)
    p k
    j = century(cen)
    p j
    day = (q + ((13*(m+1))/5).floor + k + (k/4).floor + (j/4).floor + (5*j)) % 7
    if day == 0
      final = "Saturday"
    elsif day == 1
      final = "Sunday"
    elsif day == 2
      final = "Monday"
    elsif day == 3
      final = "Tuesday"
    elsif day == 4
      final = "Wednesday"
    elsif day == 5
      final = "Thursday"
    elsif day == 6
      final = "Friday"
    end
    return final
  end
end
