class Employee 
    def initialize(name, title, salary)
        @name = name 
        @title = title 
        @salary = salary
        @boss = nil 
    end

    def boss=(new_boss)
        @boss = new_boss if @boss.nil?
    end

    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee 
    def initialize
        @employees = []
    end

    def add_employee(new_employee)
        if new_employee.boss == self
            @employees << new_employee
        end
    end
end

