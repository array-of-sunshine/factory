require_relative 'employee'
# require './employee'
require './email_reportable'
require './manager'
require './intern'



employee1 = Actualize::Employee.new({:salary => 80000, :last_name => "Campos", :first_name => "Danilo", :active => true})

employee2 = Actualize::Employee.new(salary: 70000, last_name: "Carter", first_name: "Majora", active: true)


employee1.active = false
p employee1.active
p 'employee 1 before raise'
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


p employee1.salary

# baseball_hat # snake_case
# baseballHat # camelCase
# BaseballHat # upper CamelCase
# baseball-hat # kebab case


manager1 = Actualize::Manager.new(first_name: "Manny", last_name: "Williams", salary: 100000, active: true, employees: [employee1, employee2])

manager1.fire_all_employees
manager1.send_report

manager1.print_info
manager1.give_all_raises
p manager1.class.superclass.superclass

# get all the employees
# loop through the employees
# give the employees raises


intern1 = Actualize::Intern.new(first_name: "Ingrid", last_name: "ahsdfja", salary: 0, active: true)

intern1.print_info
intern1.send_report
