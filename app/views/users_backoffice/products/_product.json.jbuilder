json.extract! product, :id, :title, :content, :status, :created_at, :updated_at
json.url product_url(product, format: :json)
