json.extract! virtual_card, :id, :number, :cvc, :expiration_date, :card_id, :created_at, :updated_at
json.url virtual_card_url(virtual_card, format: :json)
