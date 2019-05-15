feature 'Name entry' do
  scenario "players' names are displayed after submission" do
    visit '/'
    fill_in 'player_1_name', with: 'Alice'
    fill_in 'player_2_name', with: 'Bob'
    click_button 'Submit'

    expect(page).to be_has_content('Alice vs. Bob')
  end
end
