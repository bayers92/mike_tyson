json.array!(@homepage_infos) do |homepage_info|
  json.extract! homepage_info, :id, :homepage_header, :homepage_display_name, :user_id
  json.url homepage_info_url(homepage_info, format: :json)
end
