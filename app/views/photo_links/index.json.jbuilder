json.array!(@photo_links) do |photo_link|
  json.extract! photo_link, :id, :tumblr_url, :user_id
  json.url photo_link_url(photo_link, format: :json)
end
