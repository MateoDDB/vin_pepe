json.extract! recette, :id, :nom, :time, :difficulte, :note, :description, :created_at, :updated_at
json.url recette_url(recette, format: :json)
