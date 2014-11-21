json.array!(@matches) do |match|
  json.extract! match, :id, :place, :team_id_1, :team_id_2, :referee
  json.url match_url(match, format: :json)
end
