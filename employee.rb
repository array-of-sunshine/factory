# model an employee using code
# an employee has first name, last name, salary, active status


# array
# employee1 = ["Danilo", "Campos", 80000, true]
# employee2 = ["Majora", "Carter", 70000, true]

# # Danilo Campos makes $80000 per year.
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash
# employee1 = { :last_name => "Campos", :first_name => "Danilo", :salary => 80000, :active => true}
# employee2 = {first_name: "Marjora", last_name: "Carter", salary: 70000, active: true}
# employee1[:first_name] = "Brian"
# p employee1

# # print out Danilo

# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."
# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."

# class

class Employee
  attr_reader :active, :first_name, :last_name, :salary
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee1 = Employee.new({:salary => 80000, :last_name => "Campos", :first_name => "Danilo", :active => true})

employee2 = Employee.new(salary: 70000, last_name: "Carter", first_name: "Majora", active: true)

# employee2 = Employee.new("Majora", "Carter", 70000, true)

employee1.active = false
p employee1.active
# p 'employee 1 before raise'
employee1.print_info
employee1.give_annual_raise
p 'employee1 after raise'
employee1.print_info
p "*" * 50
p "employee2 before raise"
employee2.print_info
employee2.give_annual_raise
p "employee2 after raise"
employee2.print_info


# p employee1.salary
