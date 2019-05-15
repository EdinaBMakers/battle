feature 'Name entry' do
  scenario "players' names are displayed after submission" do
    sign_in_and_play

    expect(page).to have_content('Alice vs. Bob')
  end
end
