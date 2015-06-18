json.array!(@website_settings) do |website_setting|
  json.extract! website_setting, :id
  json.url website_setting_url(website_setting, format: :json)
end
