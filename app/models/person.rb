class Person < ApplicationRecord
  has_many :users, dependent: :delete_all
  has_many :contact_infos, dependent: :delete_all
  has_many :documents, dependent: :delete_all
  has_many :cards, dependent: :delete_all
  has_many :virtual_cards, through: :cards
  has_many :credits, dependent: :delete_all
  has_one_attached :avatar

  enum gender: { undefined: 0, male: 1, female: 2 }

  def user_avatar
    if avatar.present?
      avatar
    else
      'avatarDefault.png'
    end
  end

  def card_numbers
    cards&.map{ |card| card.number }
  end

  accepts_nested_attributes_for :cards, allow_destroy: true
  accepts_nested_attributes_for :contact_infos, allow_destroy: true
end
