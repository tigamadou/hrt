require 'rails_helper'

RSpec.describe 'posts/edit', type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
                            author_id: 1,
                            text: 'MyText'
                          ))
  end

  it 'renders the edit post form' do
    render

    assert_select 'form[action=?][method=?]', post_path(@post), 'post' do
      assert_select 'input[name=?]', 'post[author_id]'

      assert_select 'textarea[name=?]', 'post[text]'
    end
  end
end
