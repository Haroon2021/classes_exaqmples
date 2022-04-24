class Gadget
    attr_accessor :username
    attr_reader :production_number
    attr_writer :password

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    end

    #Note the method below overwrites a to_s method that is available 
    #on the superclass of Gadget, namely object
    def to_s
        "Gadget #{@production_number} has the username #{@username}. 
        It is made from the #{self.class} class, and it has the ID: #{self.object_id}"
    end

end

g1 = Gadget.new('rubyfan102', 'programming123')
p g1.username
p g1.production_number
g1.username = "test"
g1.password = "passwordtest"
p g1.username


g2 = Gadget.new('username101','password101')
p g2.username
p g2.production_number