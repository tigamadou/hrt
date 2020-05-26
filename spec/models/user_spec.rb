require 'rails_helper'

RSpec.describe User, type: :model do
  subject {
    described_class.new(username: 'johndoe',
                        full_name: "John Doe",
                        email: "johndoe@gmail.com",
                        created_at: DateTime.now,
                        updated_at: DateTime.now + 1.week
                       )
  }
end
