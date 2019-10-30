# your code goes here
class Person
    @@all = []
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
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
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness +=3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end