class Person
  
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def clean?
    if @hygiene > 7
      true
    end
  end
  
  def happy?
    if @happiness > 7
      true
    end
  end
  
  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    "♪ rub a dub just relaxing in the tub ♫"
  end
  
  def work_out
    @happiness += 2
    @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def hygiene=(integer)
    if integer < 0
      hygiene = 0
    elsif
      integer > 10
      hygiene = 10
    else
      hygiene = integer
    end
  end
  
  def incrementer(integer)
    
  end
end
