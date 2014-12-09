json.array!(@enabled_players) do |enabled_player|
  json.extract! enabled_player, :id, :match_id, :team_id, :player_id, :number
  json.url enabled_player_url(enabled_player, format: :json)
end
