feature 'Testing infrastructure' do
  scenario 'has a home page with content' do
    visit '/'
    expect(page.has_content?("Testing infrastructure working!")).to eq(true)
  end
end
