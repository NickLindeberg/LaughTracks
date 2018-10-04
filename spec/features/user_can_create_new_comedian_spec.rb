RSpec.describe 'As a user' do
  describe 'user can create a new comedian' do
    it 'adds comedian to index' do

      visit '/comedians'

      click_link "Add Comedian"

      expect(current_path).to eq("/comedians/new")

      new_comedian = "Ben G"
      new_comedian_city = "Anchorage"

      fill_in "comedian[name]", with: new_comedian
      fill_in "comedian[age]", with: 29
      fill_in "comedian[city]", with: new_comedian_city

      click_button "Submit"

      last_comedian = Comedian.last

      expect(current_path).to eq("/comedians")

      expect(page).to have_content(last_comedian.name)
      expect(page).to have_content(last_comedian.age)
      expect(page).to have_content(last_comedian.city)

    end
  end
end
