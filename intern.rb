# a manager can do everything an employee can do
# a manager can also send reports




# an intern can do everything an employee can do, and they can also send reports

# who should intern inherit from?
module Actualize
  class Intern < Employee
    include EmailReportable
  end
end
