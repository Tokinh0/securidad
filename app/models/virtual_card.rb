class VirtualCard < ApplicationRecord
  belongs_to :card
  accepts_nested_attributes_for :card, allow_destroy: true

  scope :search_by_user, ->(user_id){
    joins(:card).where("cards.person_id = ?", user_id)
  }
end
