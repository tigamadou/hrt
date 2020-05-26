require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(username: 'johndoe',
                        full_name: 'John Doe',
                        email: 'johndoe@gmail.com',
                        password: 'password')
  end
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

  describe 'Associations' do
    it { should have_many(:posts) }
    it { should have_many(:received_follows) }
    it { should have_many(:followers) }
    it { should have_many(:given_follows) }
    it { should have_many(:followings) }
  end
end
