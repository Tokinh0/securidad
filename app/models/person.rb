class Person < ApplicationRecord
  has_many :users
  has_many :contact_infos
  has_many :cards
  has_many :virtual_cards, through: :cards
end
