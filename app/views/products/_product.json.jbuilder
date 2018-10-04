json.extract! product, :id, :product_id, :price, :deparment_name, :SKU, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
