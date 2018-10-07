# a manager can do everything an employee can do
# a manager can also send reports

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
