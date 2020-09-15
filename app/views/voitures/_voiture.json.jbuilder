json.extract! voiture, :id, :marque, :place, :vitesse, :type, :climatiseur, :status, :created_at, :updated_at
json.url voiture_url(voiture, format: :json)
