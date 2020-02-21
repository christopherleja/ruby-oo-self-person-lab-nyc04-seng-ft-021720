class Person
  
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  def happiness=(new_happiness)
    @happiness = limit(new_happiness)
  end
  
  def hygiene=(new_hygiene)
    @hygiene = limit(new_hygiene)
  end
  
  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end
  
  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end
  
  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def happiness_change(change_amount)
    self.happiness = @happiness + change_amount
  end
  
    def hygiene_change(change_amount)
    self.hygiene = @hygiene + change_amount
  end

  def take_bath
    hygiene_change(4)
    '♪ rub a dub just relaxing in the tub ♫'
  end
  
  def work_out
    @happiness += 2
    @hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def limit(num)
    min = 0
    max = 10
    if num > 10
      10
    elsif
      num < 0
      0
    else
      num
    end
  end
  
end
