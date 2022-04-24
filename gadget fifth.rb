class Gadget
    attr_accessor :username
    attr_reader :production_number
    attr_writer :password

    def initialize
        @username = "User #{rand(1..100)}"
        @password = "topsecret"
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    end

    #Note the method below overwrites a to_s method that is available 
    #on the superclass of Gadget, namely object
    def to_s
        "Gadget #{@production_number} has the username #{@username}. 
        It is made from the #{self.class} class, and it has the ID: #{self.object_id}"
    end

end

phone = Gadget.new

puts phone.username
phone.username=('test')

p phone.username

p phone.password="Bestpassword"

p phone.production_number
