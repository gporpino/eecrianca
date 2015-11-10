json.array!(@services) do |service|
  json.extract! service, :id, :name, :amount
  json.url service_url(service, format: :json)
end
