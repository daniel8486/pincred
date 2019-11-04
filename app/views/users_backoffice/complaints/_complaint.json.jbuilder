json.extract! complaint, :id, :description_name, :rg, :cpf, :email, :phone, :address, :title, :content, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
