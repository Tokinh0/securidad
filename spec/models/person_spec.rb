
describe Person, type: :model do
  it { is_expected.to have_many :users }
  it { is_expected.to have_many :contact_infos }
  it { is_expected.to have_many :documents }
  it { is_expected.to have_many :cards }
  it { is_expected.to have_many :virtual_cards }
  it { is_expected.to have_many :credits }
  it { is_expected.to have_one :avatar_attachment }
end
