require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(username: 'johndoe',
                        full_name: 'John Doe',
                        email: 'johndoe@gmail.com',
                        password: 'password')
  end
  let(:user) { User.create(username: 'tigana',full_name:'Jean Tigana', email: 'tigana@ymail.com', password: 'password') }

  describe 'Validations' do
    it 'is valid with valid ' do
      subject.save
      expect(subject).to be_valid
    end

    it 'is not valid without a username' do
      subject.username = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a full_name' do
      subject.full_name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a email' do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a password' do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Methods' do
    it 'is valid with follow working' do
      subject.save
      expect(subject.follow(user)).to be_valid
    end

    it 'is valid with following working' do
      subject.save
      subject.follow(user)
      expect(subject.following?(user)).to be_truthy
    end

    it 'is valid with follower not working' do
      subject.save
      subject.follow(user)
      expect(subject.follower?(user)).to be_falsy
    end

  end

  describe 'Associations' do
    it { should have_many(:posts) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should have_many(:received_follows) }
    it { should have_many(:followers) }
    it { should have_many(:given_follows) }
    it { should have_many(:followings) }
  end
end
