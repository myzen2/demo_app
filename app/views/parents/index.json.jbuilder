json.array!(@parents) do |parent|
  json.extract! parent, :id, :nom, :prenom, :date_de_naissance, :adresse, :telephone
  json.url parent_url(parent, format: :json)
end
