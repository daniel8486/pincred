json.extract! publication, :id, :title, :content, :created_at, :updated_at
json.url publication_url(publication, format: :json)
