require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { User.new(username: 'JohnDoe', full_name: 'John Doe', email: 'johndoe@ymail.com', password: 'password') }
  let(:post) { Post.new(text: 'A simple post content', author_id: user.id) }
  let(:comment) { Comment.new(post_id: post.id, author_id: user.id, text: 'A simple comment!') }

  describe 'Validations' do
    context 'It has post_id, author_id and content' do
      it 'has to have a post_id' do
        expect(comment.post_id).to eq(post.id)
      end
      it 'has to have a author_id' do
        expect(comment.author_id).to eq(user.id)
      end
      it 'has to have a text' do
        expect(comment.text).to eq('A simple comment!')
      end
    end

    context 'it has to return an error for missing fields' do
      it 'returns an error for missing post_id' do
        comment.post_id = nil
        expect(comment.save).to eq(false)
      end
      it 'returns an error for missing user_id' do
        comment.author_id = nil
        expect(comment.save).to eq(false)
      end
      it 'returns an error for missing content' do
        comment.text = nil
        expect(comment.save).to eq(false)
      end
    end
  end
  describe 'Associations' do
    it { should belong_to(:post) }
    it { should belong_to(:author) }
  end
end
