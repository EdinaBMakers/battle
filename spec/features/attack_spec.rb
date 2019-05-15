feature 'Attack' do
  scenario "player 2 is attacked" do
    sign_in_and_play
    click_button 'Attack'

    expect(page).to have_content('Alice attacked Bob')
  end
end
