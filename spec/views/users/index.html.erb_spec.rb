require 'rails_helper'

RSpec.describe 'users/index', type: :view do
  before(:each) do
    assign(:users, [
             User.create!(
               username: 'Username',
               full_name: 'Full Name',
               photo: 'Photo',
               cover_image: 'Cover Image'
             ),
             User.create!(
               username: 'Username',
               full_name: 'Full Name',
               photo: 'Photo',
               cover_image: 'Cover Image'
             )
           ])
  end

  it 'renders a list of users' do
    render
    assert_select 'tr>td', text: 'Username'.to_s, count: 2
    assert_select 'tr>td', text: 'Full Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Photo'.to_s, count: 2
    assert_select 'tr>td', text: 'Cover Image'.to_s, count: 2
  end
end
