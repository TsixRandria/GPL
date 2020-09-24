json.extract! contact, :id, :nom, :email, :telephone, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
