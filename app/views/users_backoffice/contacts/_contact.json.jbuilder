json.extract! contact, :id, :description_name, :rg, :cpf, :email, :phone, :address, :title, :content, :created_at, :updated_at
json.url contact_url(contact, format: :json)
