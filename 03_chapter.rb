require 'byebug'

class Ticket
    def initialize(venue)
        @venue = venue
    end

    def venue
        @venue
    end

    def date
        @date
    end

    def price=(price)
        @price = price
    end

    # should only accept date formatted "yyyy-mm-dd"
    def date=(date)
        date_split = date.split("-")
        date_check = [date_split[0].length == 4, date_split[1].length == 2, date_split[2].length == 2]
        raise "Please submit the date in the format 'yyyy-mm-dd'." if date_check.any? { |check| check == false }
        @date = date
    end

    #=> %.2f << formatts the number to in two decimal formatt
    def discount(discount_percent)
        # debugger
        discount = discount_percent / 100.00
        @price = @price - (@price * discount)
    end
end

ticket = Ticket.new("Town Hall")
p ticket.date = "2013-11-12"
p ticket.date = "13-11-12"
