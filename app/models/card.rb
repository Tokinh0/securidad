class Card < ApplicationRecord
  belongs_to :person
  has_many :virtual_cards, dependent: :destroy
end
