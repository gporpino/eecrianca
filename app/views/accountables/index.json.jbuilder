json.array!(@accountables) do |accountable|
  json.extract! accountable, :id, :name, :gender, :birthdate, :cpf, :identity_number, :issuing, :phone, :email, :occupation, :company, :nationality, :place_of_birth
  json.url accountable_url(accountable, format: :json)
end
