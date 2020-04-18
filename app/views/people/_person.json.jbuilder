json.extract! person, :id, :name, :birth_date, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)
