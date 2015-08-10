json.array!(@units) do |unit|
  json.extract! unit, :id, :year, :sequence
  json.url unit_url(unit, format: :json)
end
