
describe Card, type: :model do
  it { is_expected.to belong_to :person }
  it { is_expected.to have_many :virtual_cards }
end
