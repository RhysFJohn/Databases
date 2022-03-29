feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: "http://www.twitter.com" , title: 'Twitter')
    Bookmark.create(url: "http://www.reddit.com", title: 'Reddit')
    Bookmark.create(url: "http://www.google.com", title: 'Google')
    
    visit('/bookmarks')
    
    expect(page).to have_link('Twitter', href: "http://www.twitter.com")
    expect(page).to have_link('Reddit', href: "http://www.reddit.com")
    expect(page).to have_link('Google', href: "http://www.google.com")
  end
end