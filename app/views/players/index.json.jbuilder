json.array!(@players) do |player|
  json.extract! player, :id, :name, :lastname, :career, :goals, :t_ama, :t_roj, :team_id
  json.url player_url(player, format: :json)
end
