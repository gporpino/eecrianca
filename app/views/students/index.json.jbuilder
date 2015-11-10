json.array!(@students) do |student|
  json.extract! student, :id, :name, :gender, :birthdate, :breed
  json.url student_url(student, format: :json)
end
