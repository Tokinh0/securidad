json.extract! card, :id, :number, :cvc, :expiration_date, :name, :birthdate, :cpf, :person_id, :created_at, :updated_at
json.url card_url(card, format: :json)
