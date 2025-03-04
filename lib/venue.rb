require 'pry'

class Venue
    attr_reader :name, :capacity, :patrons

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @patrons = []
    end 

    def add_patron(patron) 
        @patrons << patron 
    end 

    def yell_at_patrons
        @patrons.map { |patron| patron.upcase }
    end 

    def over_capacity?
        return true if @patrons.length > @capacity
        false
    end

    def kick_out
        @patrons.delete(@patrons.sample) 
    end
end