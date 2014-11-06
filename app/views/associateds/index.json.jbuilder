json.array!(@associateds) do |associated|
  json.extract! associated, :id, :name, :lastname, :phone, :cellphone, :email, :address, :universityDegree, :universityCareer, :yearDegree
  json.url associated_url(associated, format: :json)
end
