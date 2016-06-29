require 'test_helper'

class SignInTest < Capybara::Rails::TestCase
  def setup
    auth = Author.create!(first_name: "Robert", last_name: "Durham", bio: "hello")
    auth.books.create(title:"Chocolate Cookie Murder Man",
      photo_url:"https://kathrynsbooknook.files.wordpress.com/2012/01/chocolate-chip-cookie-murder.jpg?w=645",
      price:19.99)
  end
  test "Signing In" do
    user = User.create! username: "Benito", password: "Carnitas4life"
    visit root_path
    click_link "Chocolate Cookie Murder Man"
    fill_in "Username", :with => "Benito"
    fill_in "Password", :with => "Carnitas4life"
    click_button "Sign In"
    click_link "Chocolate Cookie Murder Man"

    assert_content page, "$19.99"
  end

end
