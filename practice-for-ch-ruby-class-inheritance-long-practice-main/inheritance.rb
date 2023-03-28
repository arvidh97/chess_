class Employee 
    attr_reader :boss
    def initialize(name, title, salary, boss=nil)
        @name = name 
        @title = title 
        @salary = salary
        @boss = boss 
        # self.boss.employees << self if @boss != nil
    end

    # def boss=(new_boss)
    #     @boss = new_boss if @boss.nil?
    # end

    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    
    def initialize(name, title, salary, boss=nil)
        super
        @employees = []

    end

    # def employees
    #     @employees
    # end

    def add_employee(new_employee)
        if new_employee.boss == self
            @employees << new_employee
        end
    end

    def bonus(multipilier)
        
    end

end

a = Manager.new("frank", "big_boss", 1000000)
b = Employee.new("bill", "little_man", 20000, a)
a.add_employee(b)
p a 

puts " ___________________________"
p b 