class Person < ApplicationRecord
  has_many :users
  has_many :contact_infos
  has_many :cards
  has_many :virtual_cards, through: :cards
  has_one_attached :avatar

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
