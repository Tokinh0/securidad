json.extract! document, :id, :number, :document_type, :belongs_to, :created_at, :updated_at
json.url document_url(document, format: :json)
