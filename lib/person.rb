# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  # def name   def happiness   def hygiene
  #   @name      @happiness      @hygiene
  # end        end             end
  
  def initialize(name)
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
# ------------------------------------------------------------
# Person#clean?: returns true if the person's hygiene is more than seven; otherwise, it returns false.
  def clean?
    self.hygiene > 7
  end

# Person#happy?: returns true if the person's happiness is more than seven; otherwise, it returns false.
  def happy?
    self.happiness > 7
  end

# Person#get_paid(amount): accepts a salary amount and adds this to the person's bank account. The method should return the string "all about the benjamins".
  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

# Person#take_bath: increments the person's hygiene points by four and returns the string "♪ Rub-a-dub just relaxing in the tub ♫".
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

# Person#work_out: increments the person's happiness by two points, decreases their hygiene by three points, and returns the Queen lyrics, "♪ another one bites the dust ♫".
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

# Person#call_friend(friend): accepts another instance of the Person class, or "friend".  
  def call_friend(friend)
    # The method should increment the person and the friend's happiness points by three.
    self.happiness += 3
    friend.happiness += 3
    # It should also return a string. the method increment both Stella and Felix's happiness points.
     "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

# Person#start_conversation(friend, topic): accept two arguments, the friend to start a conversation with and the topic of conversation.
  def start_conversation(friend, topic)
   case topic
    when "politics"
      [self, friend].each {|person| person.happiness -= 2}
      "blah blah sun blah rain"
    when "weather"
      [self, friend].each { |person| person.happiness += 1 }
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

# If the topic is politics, both people get sadder (their happiness decreases by 2) and the method returns "blah blah partisan blah lobbyist".
# If the topic is weather, both people get a little happier (their happiness increases by 1) and the method returns "blah blah sun blah rain".
# If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
  
  
  
end
