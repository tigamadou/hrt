require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      username: "Username",
      full_name: "Full Name",
      photo: "Photo",
      cover_image: "Cover Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/Cover Image/)
  end
end
