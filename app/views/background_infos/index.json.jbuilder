json.array!(@background_infos) do |background_info|
  json.extract! background_info, :id
  json.url background_info_url(background_info, format: :json)
end
