feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')
    visit('/bookmarks')
    expect(page).to have_link('Twitter', href: 'http://www.twitter.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Twitter', href: 'http://www.twitter.com')
  end
end