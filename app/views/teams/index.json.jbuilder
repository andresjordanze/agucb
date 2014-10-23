json.array!(@teams) do |team|
  json.extract! team, :id, :name, :p_jug, :p_gan, :p_per, :p_emp, :goles, :tar_roj, :tar_ama, :login, :password
  json.url team_url(team, format: :json)
end
