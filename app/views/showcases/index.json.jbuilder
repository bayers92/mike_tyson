json.array!(@showcases) do |showcase|
  json.extract! showcase, :id
  json.url showcase_url(showcase, format: :json)
end
