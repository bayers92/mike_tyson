json.array!(@analytics) do |analytic|
  json.extract! analytic, :id, :url, :user_id
  json.url analytic_url(analytic, format: :json)
end
