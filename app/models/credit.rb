class Credit < ApplicationRecord
  belongs_to :person

  validates :value, presence: :true

  after_create :assign_credit

  enum status: {pending: 0, approved: 1, rejected: 2}

  def assign_credit
    person.total_credit = person.total_credit+value
    person.save
  end

end
