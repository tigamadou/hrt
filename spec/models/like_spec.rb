require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { User.new(username: 'JohnDoe', full_name: 'John Doe', email: 'johndoe@ymail.com', password: 'password') }
  let(:post) { Post.new(text: 'A simple post content', author_id: user.id) }
  let(:like) { Like.new(post_id: post.id, user_id: user.id) }

  describe 'Validations' do
    context 'it has post_id and user_id' do
      it 'has to have a post_id' do
        expect(like.post_id).to eq(post.id)
      end
      it 'has to have a user_id' do
        expect(like.user_id).to eq(user.id)
      end
    end
    context 'it has to return an error for missing fields' do
      it 'returns an error for missing post_id' do
        like.post_id = nil
        expect(like.save).to eq(false)
      end
      it 'returns an error for missing user_id' do
        like.user_id = nil
        expect(like.save).to eq(false)
      end
    end
  end
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should belong_to(:post) }
  end
end
