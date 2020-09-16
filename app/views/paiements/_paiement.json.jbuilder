json.extract! paiement, :id, :accompte, :total, :created_at, :updated_at
json.url paiement_url(paiement, format: :json)
