
describe VirtualCard, type: :model do
  it { is_expected.to belong_to :card }
  it { is_expected.to have_one :person }
end
