require 'rails_helper'

RSpec.describe Following, type: :model do
  let (:user1) { User.new(username: 'JohnDoe',full_name: 'John Doe',email: 'johndoe@domain.com',password: 'password') }
  let (:user12) { User.new(username: 'JahnDoe',full_name: 'Jahn Doe',email: 'jahndoe@domain.com',password: 'password') }
  let (:follow) { Following.new(follower_id: user1.id,followed_id: user12.id) }

  describe 'Validations' do
    context 'Has follower_id and followed_id' do
      it 'has to have a follower_id' do
        expect(follow.follower_id).to eq(user1.id)
      end
      it 'has to have a followed_id' do
        expect(follow.follower_id).to eq(user12.id)
      end
    end

    context 'returns an errors for missing fields' do
      it 'returns error for missing follower_id' do
        follow.follower_id = nil
        expect(follow.save).to eq(false)
      end
      it 'returns error for missing followed_id' do
        follow.followed_id = nil
        expect(follow.save).to eq(false)
      end
    end
    
  end

  describe 'Associations' do
    it { should belong_to(:follower)}
    it { should belong_to(:followed)}
  end
end
