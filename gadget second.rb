class Gadget
    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
end

shiny = Gadget.new
flashy = Gadget.new

puts shiny
puts flashy

p shiny.object_id
p flashy.object_id

phone = Gadget.new
puts phone.inspect
p phone


laptop = Gadget.new
p laptop

# NB with initialize you can not use the method outside the class to see the values directly
# for instance the code: Gadget.initialize WILL NOT WORK

# Belkow we can see what variables are instance vars although we can not see what the values of the variables are
p laptop.instance_variables