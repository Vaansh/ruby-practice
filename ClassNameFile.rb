class ClassName
    include Math                    #Math is ModuleName
    @@clas_var = 0
    attr_accessor :a                #to avoid set/get methods.
    def initialize(a)
        @a = a
        @@clas_var += 1
    end
    def to_s
        return "instance variable @a is #@a"
    end
    def class_var_total
        return "class variable @@clas_var is #@@class_var"
    end
end