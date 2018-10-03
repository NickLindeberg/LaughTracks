RSpec.describe Comedian, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:age)}

  end

  describe 'Class Methods' do
    it '.avg_age' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      avg_age = Comedian.avg_age

      expect(avg_age).to eq(31)
    end
  end
end
