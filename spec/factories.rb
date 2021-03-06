FactoryBot.define do
factory :user do
    sequence(:email) { |n| "person#{n}@example.com" }
    password { 'secretPassword' }
    password_confirmation { 'secretPassword' }
  end

factory :gram do
  message { "hello" }
  image { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }

  association :user
end
end