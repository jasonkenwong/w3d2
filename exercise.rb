class Person
  attr_reader :first_name, :last_name, :gender

  def initialize(first_name, last_name, gender)
      @first_name = first_name
      @last_name = last_name
      @gender = gender
  end
  
  def fullname
    return "#{@first_name.capitalize} #{@last_name.capitalize}"
  end
  
  def doctor
    "Dr. #{fullname}"
  end
  
  def lawyer
    "#{fullname}, Esq."
  end
end

class Doctor<Person
  def fullname
    return "Dr. #{@first_name.capitalize} #{@last_name.capitalize}"
  end
end

person1 = Person.new("Joe","Smith","Male")
puts person1.fullname
puts person1.doctor
puts person1.lawyer

doctor1 = Doctor.new("Jack","Carol","Male")
puts doctor1.fullname