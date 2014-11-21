json.array!(@scorers) do |scorer|
  json.extract! scorer, :id, :match_id, :player_id, :team_id, :goals
  json.url scorer_url(scorer, format: :json)
end
