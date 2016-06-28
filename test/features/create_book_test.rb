require 'test_helper'
  if Author.find_by(first_name:"Gabriel").present?
    true
  else
    Author.create(first_name: "Gabriel", last_name: "Perez", bio: "hello")
  end

class CreateBookTest < Capybara::Rails::TestCase
  test "Creating a Book" do
    visit root_path
    click_link "Add a Book"
    fill_in "Title", :with => "The Three Musketeers"
    fill_in "Price", :with => 39.93
    fill_in "Photo url", :with => "https://upload.wikimedia.org/wikipedia/commons/c/cf/CC_No_01_Three_Musketeers.jpg"
    select "Gabriel Perez", :from => "Author"
    click_button "Create Book"

    assert_content page, "Book Created!"
    book = Book.find_by title: "The Three Musketeers"
    assert book, "Book should exist after filling out form"
  end

end
