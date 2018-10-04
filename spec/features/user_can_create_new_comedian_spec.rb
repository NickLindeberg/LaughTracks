RSpec.describe 'Comedian Index Page' do
  describe 'user can see information about each comedian' do
    it 'shows comedian attributes' do
      comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")

      visit '/comedians'

      within("#comic-1") do
        expect(page).to have_content("Comedian: #{comic_1.name}")
        expect(page).to have_content("Age: #{comic_1.age}")
        expect(page).to have_content("City: #{comic_1.city}")
      end
    end
