json.extract! client, :id, :Prenom, :Nom, :DateNaissance, :NAS, :Adresse_id, :NombreEnfants, :CompteTaxesProprietaire, :created_at, :updated_at
json.url client_url(client, format: :json)
