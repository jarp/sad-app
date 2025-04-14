json.extract! employee, :id, :first_name, :last_name, :birthdate, :is_active, :is_manager, :department_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
