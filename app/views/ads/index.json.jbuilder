json.array!(@ads) do |ad|
  json.extract! ad, :id, :title, :content, :user_id
  json.url ad_url(ad, format: :json)
end
