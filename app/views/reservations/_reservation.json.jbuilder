json.extract! reservation, :id, :numero_vol, :compagnie, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
