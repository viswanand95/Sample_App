json.extract! employeemodel, :id, :name, :age, :gender, :designation, :created_at, :updated_at
json.url employeemodel_url(employeemodel, format: :json)
