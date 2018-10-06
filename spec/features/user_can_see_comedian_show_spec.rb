RSpec.describe 'Comedian show Page' do
  it 'shows comedian attributes' do
    comic_1 = Comedian.create(name: "Jim Bob", age: 48, city: "Denver")

    visit "/comedians/#{comic_1.id}"

    expect(page).to have_content("#{comic_1.name}")
    expect(page).to have_content("Age: #{comic_1.age}")
    expect(page).to have_content("Home Town: #{comic_1.city}")
  end
end
