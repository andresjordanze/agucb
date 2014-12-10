json.array!(@publications) do |publication|
  json.extract! publication, :id, :title, :description, :id_event_or_activity
  json.url publication_url(publication, format: :json)
end
