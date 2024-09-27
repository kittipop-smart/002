# Define a class called Person
class Person
  # The initialize method is the constructor that runs when a new instance is created
  def initialize(name, age)
    # Instance variables, denoted by @, store data unique to each instance of the class
    @name = name
    @age = age
  end

  # Define a method to introduce the person
  def introduce
    puts "Hello, my name is #{@name} and I am #{@age} years old."
  end

  # Define a method to update the age of the person
  def have_birthday
    @age += 1
    puts "It's my birthday! I am now #{@age} years old."
  end

  # Define a method to change the person's name
  def change_name(new_name)
    @name = new_name
    puts "I've changed my name to #{@name}."
  end

  def name
    @name
  end

  def age
    @age
  end
end

# Create instances of the Person class
person1 = Person.new("Alice", 30)
person2 = Person.new("Bob", 25)

puts person1.name  # Output: Alice
puts person1.age  # Output: 30