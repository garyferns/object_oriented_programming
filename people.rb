

class Person

attr_accessor :name


  def initialize(name)

    @name = name
  end

  def greeting

    puts "Hi, my name is #{@name}"
  end

end



class Student < Person

def learn

  puts "I get it!"
  end

end


class Instructor < Person
  def teach

  puts "Everything in Ruby is an object"
  end

end



chris = Instructor.new("Chris")
chris.greeting

cristina = Student.new("Cristina")
cristina.greeting

chris.teach
cristina.learn

# If chris.learn or cristina.teach is used, an error occurs.
# This happens because the learn method is not defined in the
# Instructor class, and the teach method is not defined in the
# Student class.