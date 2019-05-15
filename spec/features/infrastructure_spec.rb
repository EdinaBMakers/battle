feature 'Testing infrastructure' do
  scenario "first player can enter their name" do
    visit '/'

    expect(find("input[name='player_1']")).to be_visible
  end

  scenario "second player can enter their name" do
    visit '/'

    expect(find("input[name='player_2']")).to be_visible
  end

  scenario "players can submit their names" do
    visit '/'

    expect(find("input[value='Submit']")).to be_visible
  end

  scenario "game starts after players' names are submitted" do
    visit '/'
    fill_in 'player_1', with: 'Alice'
    fill_in 'player_2', with: 'Bob'
    click_button 'Submit'

    expect(page).to be_has_content('Alice vs. Bob')
  end
end
