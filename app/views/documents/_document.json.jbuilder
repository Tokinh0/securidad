json.extract! document, :id, :number, :type, :belongs_to, :created_at, :updated_at
json.url document_url(document, format: :json)
