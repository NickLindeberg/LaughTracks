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

  describe 'Instance Methods' do
    it '.com_specs' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      special_1 = comic_1.specials.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 53)
      special_2 = comic_1.specials.create(name: "Jim Bob Gets Even Better", image_url: 'test.jpg', run_time: 53)
      special_3 = comic_1.specials.create(name: "Jim Bob Is A Loser", image_url: 'test.jpg', run_time: 53)
      comic_specs = comic_1.com_specs

      expect(comic_specs).to eq(3)
    end
  end
end
