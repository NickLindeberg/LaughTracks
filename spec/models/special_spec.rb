RSpec.describe Special, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:image_url)}
    it {should validate_presence_of(:run_time)}

  end
end
