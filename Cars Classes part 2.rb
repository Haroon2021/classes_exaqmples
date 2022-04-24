class Car

    def initialize(age, miles)
        base_value = 20000
        age_deduction = age*1000
        miles_deduction = (miles/10.to_f)
        @value = base_value - age_deduction - miles_deduction
    end

    def compare_car_with(car)
        self.value > car.value ? "Your car is better" : "Your car is worse"
    end
 
    #A protected method is one where if you create a new instance of the class (another car in this case) the other instances of the
    #same class can access this method ---> primaraly used to compare instances of objects from the same class (eg comparing cars)
    protected

    def value
        @value
    end

end
civic = Car.new(3,30000)
phiat = Car.new(1,20000)

p civic.compare_car_with(phiat)
p phiat.compare_car_with(civic)