json.extract! membership, :id, :name, :email, :phone, :created_at, :updated_at
json.url membership_url(membership, format: :json)
