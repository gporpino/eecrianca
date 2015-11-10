json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :school_year
  json.url enrollment_url(enrollment, format: :json)
end
