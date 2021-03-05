#A
class Bicycle
attr_accessor :speed

#
def initialize
    @speed = 0
end

#
def speedup (inc)
    if inc.negative?
        puts "ERROR"
    else
        @speed += inc
    end        
end

#
def brake (d)
    if d.negative? || d == 0
        print "ERROR"
    else
        @speed -= d
    end        
end      

#
def to_s
    return "Bicycle speed: #{@speed}"
end
end

#B
class MountainBike < Bicycle    

#
def initialize (noOfGears)
    super()
    @noOfGears = noOfGears
    @gear = 1
end

#
def changeGear
    if @gear < @noOfGears 
        @gear += 1
    end
end

#
def to_s
    return "MountainBike Number of gears: #{@noOfGears} Current gear: #{@gear} Current speed: #{:speed}"
end


end

#C
b = Bicycle.new()
b.speedup(10)
puts b.to_s

#D
mb = MountainBike.new(7)
10.times do
    mb.changeGear
end

#E
puts mb.to_s