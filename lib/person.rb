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

   
    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10
          @happiness = happiness
        elsif happiness > 10
           @happiness = 10
        else 
            @happiness = 0
        end
    end
    
    def happy?
        if @happi# your code goes here
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

   
    def happiness=(happiness)
        if happiness >= 0 && happiness <= 10
          @happiness = happiness
        elsif happiness > 10
           @happiness = 10
        else 
            @happiness = 0
        end
    end
    
    def happy?
        if @happiness > 7 && @happiness <= 10
            return true
        else
            return false
        end
    end

    def hygiene=(hygiene_level)
      if hygiene_level >= 0 && hygiene_level <= 10
          @hygiene = hygiene_level
        elsif hygiene_level > 10
           @hygiene = 10
        else 
            @hygiene = 0
      end
    end

    def clean?
        if @hygiene > 7 && @hygiene <= 10
            return true
        else
            return false
        end
    end
    
endness > 7 && @happiness <= 10
            return true
        else
            return false
        end
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