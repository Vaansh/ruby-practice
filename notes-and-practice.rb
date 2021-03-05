# puts a[5]

def mysum (arr, n)
    if n > arr.length
        return -1
    end

    index = arr.length-n
    sum=0
    loop do        
        sum += arr[index]
        index += 1
        break if index == arr.length
    end            
    return sum
end


puts mysum([3,40,5,70,10],10)
puts mysum([1,2,3,4,5],2)




#display.
puts "The Ruby Language".length

#shallow copy.
person1 = "Tony"
person2 = person1

#deep copy.
person3 = person1.dup

#check output.
person1[0] = "R"
puts person1
puts person2
puts person3
puts person1[-1]

#create array.
b1 = Array.new
b2 = [1, 2, 3]

#associative arrays
hashName = {
    "key" => "value"
}

puts hashName.length
puts hashName["key"]                     #by name NOT index

#associative arrays - add
hashName["key2"] = "value2"

#associative arrays - delete
hashName.delete_if{
    |key, value| key == "key2"
}

#associative arrays - iterate
hashName.each_pair do |key, value|
    puts "#{key} : #{value}"
end

hashName.each do |key, value|           #same thing
    puts "#{key} : #{value}"
end

hashName.each_key do |key|
    puts "#{key}"
end

#puts vs. print
puts "adds new line"
puts ": demonstration 1"
print "does not add new line"
puts " : demonstration 2"
puts ": demonstration 3"

#include module in SubClassName.     #NOTE: This is just the structure to cover different concepts, does not work.
require "./ClassNameFile.rb"           #file in directory with ClassName
class SubClassName < ClassName    
    @@new_class_var = 0
    attr_accessor :b                #to avoid set/get methods.
    def initialize (a, b)
        super(a)
        @b = b
        @@new_class_var += 1
    end
    def to_s
        return "instance variable @a is #@a instance variable @b is #@b"
    end
    def class_var_total
        return "class variable @@new_class_var is #@@new_class_var"
    end
end

example = SubClassName.new(5, 3)
puts example.to_s
puts example.class_var_total

example2 = SubClassName.new(3, 5)
def example2.whoAmI
    return "you are a subclass"
end
puts example2.whoAmI
puts 


#naming conventions
ModuleName                          #collection of constants, methods. Cant generate instances.
ClassName                           #may generate objects, and have instance variables.
$global_variable
@@class_variable
CONSTANT_NAME
ConstantName
Constant_Name
@instance_variable
:symbol_name
method_name
local_variable