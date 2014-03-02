json.array!(@custodians) do |custodian|
  json.extract! custodian, :id, :employee_id, :description
  json.url custodian_url(custodian, format: :json)
end
