# your code goes here
class Person
    @@all = []
    attr_accessor :name, :happiness, :hygiene, :account
    def initialize(name, account=25, happiness=8, hygiene=8)
        @name = name
        @account = account
        @happiness = happiness
        @hygiene = hygiene
        @@all << self
    end

    def self.all
        @@all
    end
    
    def get_paid(salary)
        @account += salary
        "All about the benjamins"
    end

    def happy?
        if @happiness > 7 && @happiness <= 10 && @happiness >= 0
            return true
        elsif @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            return false
        end
    end

    def take_bath

    end

    def clean?
        if @hygiene > 7 && @hygiene <= 10 && @hygiene >= 0
            return true
        elsif @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else 
            return false
        end
    end
    
end