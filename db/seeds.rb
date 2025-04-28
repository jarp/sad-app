# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[ 'ITAO', 'OIT', 'OPAC' ].each do |department_name|
  Department.find_or_create_by!(name: department_name) do |department|
    department.description = "#{department_name} description"
  end
end

[ 'John Doe', 'Jane Doe', 'Jack Beanstalk', 'Mickey Mouse' ].each do |employee_name|
  Employee.find_or_create_by!(
      first_name: employee_name.split(' ').first,
      last_name: employee_name.split(' ').last) do |employee|
    employee.birthdate = Date.today - 20.years
    employee.is_active = true
    employee.is_manager = false
    employee.department = Department.all.sample
  end
end

[ 'Typing', 'Reading', 'Writing' ].each do |skill_name|
  Skill.find_or_create_by!(name: skill_name)
end
