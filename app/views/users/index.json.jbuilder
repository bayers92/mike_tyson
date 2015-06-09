json.array!(@users) do |user|
  json.extract! user, :id, :domain_name, :name_first, :name_last, :homepage_header, :intro_paragraph
  json.url user_url(user, format: :json)
end
