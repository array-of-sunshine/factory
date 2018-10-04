# model an employee using code
# an employee has first name, last name, salary, active status


# array
# employee1 = ["Danilo", "Campos", 80000, true]
# employee2 = ["Majora", "Carter", 70000, true]

# # Danilo Campos makes $80000 per year.
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash
# employee1 = {:first_name => "Danilo", :last_name => "Campos", :salary => 80000, :active => true}
# employee2 = {first_name: "Marjora", last_name: "Carter", salary: 70000, active: true}

# # print out Danilo

# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

# class

class Employee
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end
end

employee1 = Employee.new("Danilo", "Campos", 80000, true)
employee2 = Employee.new("Majora", "Carter", 70000, true)

employee1.print_info
employee2.print_info
