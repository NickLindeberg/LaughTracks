RSpec.describe Special, type: :model do
  describe 'Validations' do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:image_url)}
    it {should validate_presence_of(:run_time)}

  end

  describe 'Class Methods' do
    it '.avg_run' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 53, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 61, comedian_id: comic_2.id)
      special_3 = Special.create(name: "Funny Stuff", image_url: 'test3.jpg', run_time: 48, comedian_id: comic_3.id)

      avg_run = Special.avg_run

      expect(avg_run).to eq(54)
    end

    it '.total_specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 53, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 61, comedian_id: comic_2.id)
      special_3 = Special.create(name: "Funny Stuff", image_url: 'test3.jpg', run_time: 48, comedian_id: comic_3.id)

      grand_total_specials = Special.total_specials

      expect(grand_total_specials).to eq(3)
    end
  end
end
