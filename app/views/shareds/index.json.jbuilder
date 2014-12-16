json.array!(@shareds) do |shared|
  json.extract! shared, :id, :user_id, :publication_id
  json.url shared_url(shared, format: :json)
end
