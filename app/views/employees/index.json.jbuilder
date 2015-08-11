json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :birthdate, :role
  json.url employee_url(employee, format: :json)
end
