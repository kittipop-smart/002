class Person
  attr_accessor :name, :age

  attr_accessor :secret

  private :secret

  # Initialize with name and age
  def initialize(name, age)
    @name = name
    @age = age
    @secret = "I scared of spiders."
  end

  # Public method to compare age with another person  
  def older_than?(other_person)
    if compare_age(other_person)
      puts "#{name} is older than #{other_person.name}."
    else
      puts "#{name} is not older than #{other_person.name}."
    end
  end

  def discuss_secret_with(other_person)
    puts other_person.share_secret

    # This will raise a NoMethodError
    # puts other_person.secret
  end

  protected

  # Protected method to compare age, accessible within the class and its instances
  def compare_age(other_person)
    age > other_person.age
  end

  def share_secret
    secret
  end
end

# Create two Person objects
person1 = Person.new("Alice", 30)
person2 = Person.new("Bob", 25)

# Trying to call a private method directly will result in an error
# puts person1.secret

# Trying to call a protected method directly will result in an error
# person1.compare_age(person2)  # This will raise a NoMethodError
# person1.share_secret

person1.discuss_secret_with(person2)

# Compare their ages using a public method
person1.older_than?(person2)  # Output: Alice is older than Bob.
person2.older_than?(person1)  # Output: Bob is not older than Alice.


class Employee < Person
  def compare_ages_with_colleague(colleague)
    if compare_age(colleague)
      puts "#{name} is older than #{colleague.name} (colleague)."
    else
      puts "#{name} is not older than #{colleague.name} (colleague)."
    end
  end
end

# # Create two Employee objects
employee1 = Employee.new("Charlie", 40)
employee2 = Employee.new("Dave", 35)

# Compare their ages using a protected method inside a subclass
employee1.compare_ages_with_colleague(employee2)  # Output: Charlie is older than Dave (colleague).
employee2.compare_ages_with_colleague(employee1)  # Output: Dave is not older than Charlie (colleague).
