json.array!(@clerks) do |clerk|
  json.extract! clerk, :id
  json.url clerk_url(clerk, format: :json)
end
