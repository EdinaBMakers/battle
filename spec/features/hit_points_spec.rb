feature 'View hit points' do
  scenario "after submitting players' names player 2's hit points are displayed" do
    sign_in_and_play
    
    expect(page).to have_content('Bob: 60HP')
  end
end
