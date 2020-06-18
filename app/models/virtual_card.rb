class VirtualCard < ApplicationRecord
  belongs_to :card
  has_one :person, through: :card

  before_create :generate_random_data

  accepts_nested_attributes_for :card, allow_destroy: true

  scope :search_by_user, ->(user_id){
    joins(:card).where("cards.person_id = ?", user_id)
  }

  def generate_random_data
    if number.blank? && cvc.blank? && expiration_date.blank?
      self.number = "#{rand.to_s[2..5]} #{rand.to_s[2..5]} #{rand.to_s[2..5]} #{rand.to_s[2..5]}"
      self.cvc = rand.to_s[2..4]
      self.expiration_date = DateTime.current + 7.years
    end
  end
end
