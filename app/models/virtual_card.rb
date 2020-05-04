class VirtualCard < ApplicationRecord
  belongs_to :card
  accepts_nested_attributes_for :card, allow_destroy: true
end
