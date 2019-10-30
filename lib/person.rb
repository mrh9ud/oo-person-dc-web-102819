# your code goes here
require 'pry'
class Person
    @@all = []
    attr_reader :name
    attr_accessor :happiness, :hygiene, :bank_account
    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @@all << self
    end

    def self.all
        @@all
    end
    
  
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
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
    
    def take_bath
      @hygiene += 4
      hygiene=(@hygiene)
     "♪ Rub-a-dub just relaxing in the tub ♫"
     binding.pry
    end
    
    def work_out
      @happiness += 2
      @hygiene -=3
      "♪ another one bites the dust ♫"
    end
    
end