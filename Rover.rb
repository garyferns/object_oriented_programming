# Exercise 2 - Mars Rover!!


#Gets the plateau size

print "Enter plateau size: "

plateau = gets.chomp.split.map {|x| x.to_i }
max_x = plateau[0]
max_y = plateau[1]
puts "#{max_x}, #{max_y}"


# Gets the initial coordinates

print "Enter Initial Coordinates and Direction: "

initial_coords = gets.chomp.split
x = initial_coords[0].to_i
y = initial_coords[1].to_i
init_direction = initial_coords[2]


class Rover

attr_accessor :current_direction, :d, :compass, :com_length, :rover_input, :count

# Takes in initial directiokn
def initialize(x_coord, y_coord, direction)

  @compass = ["N", "E", "S", "W"]
  @count = 0
  @x = x_coord
  @y = y_coord
  @d = direction
  @current_direction = @compass.index(@d)
  puts "\nThe initial position of the robot is  #{@x}, #{@y}. It is facing the #{@d} direction."
  end


def read_instruction

puts "\nEnter a command string. L will turn the rover 90 degrees left, R will turn it 90 degrees right, and M will move the rover one unit forward."
@rover_input = gets.chomp.split("")
@com_length = rover_input.length
end


def turn(revolve)

if revolve == "L"
@compass.rotate!(-1)

elsif revolve == "R"
@compass.rotate!(1)
end
end



def move

if @compass[@current_direction] == "N"
  @y += 1

elsif @compass[@current_direction] == "E"
  @x += 1

elsif @compass[@current_direction] == "S"
  @y -= 1

elsif @compass[@current_direction] == "W"
  @x -= 1

  end
end

def execute_instruction

  while @count < (@com_length)

    if @rover_input[@count] == "L"
      turn("L")

    elsif @rover_input[@count] == "R"
      turn("R")

    elsif @rover_input[@count] == "M"
      move
    end

    @count += 1
  end


  puts "Final position is #{@x}, #{@y}, and the direction is #{@compass[@current_direction]}"
  end
end


rov1 = Rover.new(x, y, init_direction)
rov1.read_instruction
rov1.execute_instruction

