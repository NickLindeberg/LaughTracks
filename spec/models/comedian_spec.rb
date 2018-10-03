RSpec.describe Comedian, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}

  end
end
