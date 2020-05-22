require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      username: "MyString",
      full_name: "MyString",
      photo: "MyString",
      cover_image: "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[full_name]"

      assert_select "input[name=?]", "user[photo]"

      assert_select "input[name=?]", "user[cover_image]"
    end
  end
end
