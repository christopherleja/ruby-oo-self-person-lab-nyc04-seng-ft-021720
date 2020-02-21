class Person
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness(new_happiness)
    @happiness = limit(new_happiness)
  end
  
  def hygiene(new_hygiene)
    @hygiene = limit(new_hygiene)
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

  def limit(num)
    max = 10
    min = 0
    if num < 0
      0
    elsif
      num > 10
      10
    else
      num
    end
  end
  
  def incrementer(integer)
    
  end
end
