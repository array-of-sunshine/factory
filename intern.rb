# a manager can do everything an employee can do
# a manager can also send reports
module EmailReportable
  def send_report
    p "going to send the report"
    # write some code here to actually sent the report
    p "totally just sent that report"
  end
end

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

# employee1.active = false
# p employee1.active
# # p 'employee 1 before raise'
# employee1.print_info
# employee1.give_annual_raise
# p 'employee1 after raise'
# employee1.print_info
# p "*" * 50
# p "employee2 before raise"
# employee2.print_info
# employee2.give_annual_raise
# p "employee2 after raise"
# employee2.print_info


# p employee1.salary

# baseball_hat # snake_case
# baseballHat # camelCase
# BaseballHat # upper CamelCase
# baseball-hat # kebab case

class Manager < Employee
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  include EmailReportable

  def give_all_raises
    # loop through the employees
    @employees.each do |employee|
      # give them each a raise
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    # loop through the employees
    @employees.each do |employee|
      employee.active = false
    end
    # fire each of them
  end
end


manager1 = Manager.new(first_name: "Manny", last_name: "Williams", salary: 100000, active: true, employees: [employee1, employee2])

manager1.fire_all_employees
manager1.send_report

manager1.print_info
manager1.give_all_raises
p manager1.class.superclass.superclass

# get all the employees
# loop through the employees
# give the employees raises


# an intern can do everything an employee can do, and they can also send reports

# who should intern inherit from?
class Intern < Employee
  include EmailReportable
end

intern1 = Intern.new(first_name: "Ingrid", last_name: "ahsdfja", salary: 0, active: true)

intern1.print_info
intern1.send_report
