feature 'View hit points' do
  scenario "after submitting players' names player 2's hit points are displayed" do
    visit '/'
    fill_in 'player_1_name', with: 'Alice'
    fill_in 'player_2_name', with: 'Bob'
    click_button 'Submit'

    expect(page).to have_content('Bob: 60HP')
  end
end
