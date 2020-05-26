FactoryBot.define do
  factory :user do
    id { 1 }
    email { 'test@user.com' }
    password { '123456' }
    username { 'johndoe' }
    full_name { 'John Doe' }
  end
end
