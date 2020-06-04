require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.new(username: 'JohnDoe', full_name: 'John Doe', email: 'johndoe@domain.com', password: 'password') }

  subject do
    described_class.new(author_id: user.id,
                        text: 'Lorem ipsum',
                        created_at: DateTime.now,
                        updated_at: DateTime.now + 1.week)
  end

  describe 'Validations' do
    it 'is valid with valid ' do
      user.save
      expect(subject).to be_valid
    end

    it 'is not valid without a Text' do
      subject.text = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a author_id' do
      subject.author_id = nil
      expect(subject).to_not be_valid
    end
  end
  

  describe 'Associations' do
    it { should belong_to(:author) }
    it { should have_many(:comments) }
    it { should have_many(:likes) }
  end
end
