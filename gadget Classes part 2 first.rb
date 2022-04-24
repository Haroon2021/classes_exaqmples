#Using a vlaidation condition for password so password is temporarely a accessor

class Gadget
    # attr_writer :password
    attr_accessor :username,  :password
    attr_reader :production_number
    

    def initialize(username, password)
        @username = username
        @password = password
        @production_number = "#{("a".."z").to_a.sample}-#{rand(1..999)}"
    end
    #Note any finction written here that is a setter or getter overwrites the stuff in lines 4 to 6 as appropiate
    # ie the function below will overwrite the fact that the password is an accessor because the finction below is a setter method
    def password=(new_password)

        if validate_password(new_password)
            @password = new_password
        end    
    end

    #Note the method below overwrites a to_s method that is available 
    #on the superclass of Gadget, namely object
    def to_s
        "Gadget #{@production_number} has the username #{@username}. 
        It is made from the #{self.class} class, and it has the ID: #{self.object_id}"
    end

    private

    def generate_production_number
        start_digits = rand(10000..999999) 
        end_digits = rand(10000..999999)
        alphabet = ("A".."Z").to_a
        middle_digits = "2022"
        5.times{middle_digits << alphabet.sample}
        "#{start_digits}-#{middle_digits}-#{end_digits}"
    end

    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length >= 6 && new_password =~/\d/
    end

end

phone = Gadget.new('Rubyfan','password')
puts phone.password

phone.password =123
puts phone.password

phone.password ='test'
puts phone.password

phone.password ='computer'
puts phone.password

phone.password ='computer123'
puts phone.password