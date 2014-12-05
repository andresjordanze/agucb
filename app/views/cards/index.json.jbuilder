json.array!(@cards) do |card|
  json.extract! card, :id, :match_id, :player_id, :team_id, :type, :number
  json.url card_url(card, format: :json)
end
