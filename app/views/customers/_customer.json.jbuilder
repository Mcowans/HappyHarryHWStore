json.extract! custumer, :id, :customer_id, :first_name, :last_name, :email, :phone, :address_id, :created_at, :updated_at
json.url custumer_url(custumer, format: :json)
