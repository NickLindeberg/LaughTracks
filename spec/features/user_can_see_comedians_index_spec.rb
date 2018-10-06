RSpec.describe 'Comedian Index Page' do
  describe 'user can see information about each comedian' do
    it 'shows comedian attributes' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")

      visit '/comedians'
      save_and_open_page

      within("#comic") do
        expect(page).to have_content("#{comic_1.name}")
        expect(page).to have_content("Age: #{comic_1.age}")
        expect(page).to have_content("City: #{comic_1.city}")
      end
    end

    it 'shows comedian specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      special_1 = comic_1.specials.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50)
      special_2 = comic_1.specials.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40)

      visit '/comedians'

      within("#specials") do
        expect(page).to have_content(special_1.name)
        expect(page).to have_content(special_1.run_time)
        expect(page).to have_css("img[src='#{special_1.image_url}']")
        expect(page).to have_content(special_2.name)
        expect(page).to have_content(special_2.run_time)
        expect(page).to have_css("img[src='#{special_2.image_url}']")

      end
    end
  end

  describe 'user can see Statistics about all comedians' do
    it 'user sees all comedians' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")

        visit '/comedians'

        expect(page).to have_content(comic_1.name)
        expect(page).to have_content(comic_2.name)
    end

    it 'user sees updated list of comedians when queried' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 23, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")

      visit '/comedians?age=23'

        expect(page).to have_content(comic_2.name)
        expect(page).to have_content(comic_3.name)
        expect(page).to_not have_content(comic_1.name)
    end


    it 'user sees average age of comedians' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")

      visit '/comedians'

      within("#av_age") do
        expect(page).to have_content("31 years old")
      end
    end

    it 'user sees updated list of comedians when age is queried' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 23, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40, comedian_id: comic_1.id)

      visit '/comedians?age=23'

      expect(page).to have_content(comic_2.name)
      expect(page).to have_content(comic_3.name)
      expect(page).to_not have_content(comic_1.name)
    end

    it 'user sees total number of specials' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = Special.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50, comedian_id: comic_1.id)
      special_2 = Special.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40, comedian_id: comic_1.id)

      visit '/comedians'

      expect(page).to have_content("2 specials")
    end

    it 'user sees updated number of specials when queried' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 23, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = comic_1.specials.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50)
      special_2 = comic_2.specials.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 40)
      special_3 = comic_2.specials.create(name: "Jimmy makes people laugh even more", image_url: 'test2.jpg', run_time: 40)
      special_4 = comic_3.specials.create(name: "Steve is the coolest", image_url: 'test2.jpg', run_time: 40)

      visit '/comedians?age=23'

      expect(page).to have_content("3 specials")
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

    it 'user sees updated average runtime in Statistics when queried' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 23, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")
      special_1 = comic_1.specials.create(name: "Jim Bob Is Funny", image_url: 'test.jpg', run_time: 50)
      special_2 = comic_2.specials.create(name: "Jimmy makes people laugh", image_url: 'test2.jpg', run_time: 50)
      special_3 = comic_3.specials.create(name: "Jimmy makes people laugh even more", image_url: 'test2.jpg', run_time: 40)

      visit '/comedians?age=23'

      within("#av_run") do
        expect(page).to have_content("45 minutes")
      end
    end

    it 'shows unique list of cities for comedians' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")
      comic_2 = Comedian.create(name: "Sally Jo", age: 22, city: "Vegas")
      comic_3 = Comedian.create(name: "Steve Schmeve", age: 23, city: "Vegas")

      visit '/comedians'

      within(".cities") do
        expect(page).to have_content(comic_1.city, count: 1)
        expect(page).to have_content(comic_2.city, count: 1)
      end
    end
  end
end
