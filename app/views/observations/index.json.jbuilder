json.array!(@observations) do |observation|
  json.extract! observation, :id, :match_id, :team_id, :detail, :referee
  json.url observation_url(observation, format: :json)
end
