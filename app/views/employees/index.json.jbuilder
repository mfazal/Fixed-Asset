json.array!(@employees) do |employee|
  json.extract! employee, :id, :code, :fullname, :emailid, :contactnum
  json.url employee_url(employee, format: :json)
end
