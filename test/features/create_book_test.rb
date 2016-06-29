require 'test_helper'

class CreateBookTest < Capybara::Rails::TestCase
  def setup
    Author.create(first_name: "Gabriel", last_name: "Perez", bio: "hello")
  end

  test "Creating a Book" do
    user = User.create! username: "Benito", password: "Carnitas4life"
    visit root_path
    click_link "Add a Book"
    fill_in "Username", :with => "Benito"
    fill_in "Password", :with => "Carnitas4life"
    click_button "Sign In"
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
