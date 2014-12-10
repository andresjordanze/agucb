json.array!(@associations) do |association|
  json.extract! association, :id, :aboutUs, :mission, :vision, :institutionalPurposes, :generalObjectives, :specificObjectives, :organization
  json.url association_url(association, format: :json)
end
