RSpec.describe 'Comedian Index Page' do
  describe 'user can see information about each comedian' do
    it 'shows comedian attributes' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")

      visit '/comedians'

      within("#comic") do
        expect(page).to have_content("Comedian: #{comic_1.name}")
        expect(page).to have_content("Age: #{comic_1.age}")
        expect(page).to have_content("City: #{comic_1.city}")
      end
    end

    it 'shows comedian specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40, comedian_id: comic_1.id)

      visit '/comedians'

      within("#specials") do
        expect(page).to have_content(special_1.name)
        expect(page).to have_content(special_2.name)
      end
    end
  end

  describe 'user can see Statistics about all comedians' do
    it 'user sees average age of comedians' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")

      visit '/comedians'

      within("#av_age") do
        expect(page).to have_content("31 years old")
      end
    end

    it 'user sees number of total number of specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40, comedian_id: comic_1.id)

      visit '/comedians'

      expect(page).to have_content("2 specials")
    end

    it 'user sees average runtime in Statistics' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40, comedian_id: comic_1.id)

      visit '/comedians'

      within("#av_run") do
        expect(page).to have_content("45 minutes")
      end
    end

    it 'shows unique list of cities for comedians' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")

      visit '/comedians'

#need to add within to this test.
      expect(page).to have_content(comic_1.city)
      expect(page).to have_content(comic_2.city)
      # expect(page).to_not have_content(comic_3.city)

    end
  end
end
