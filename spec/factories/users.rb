FactoryBot.define do
  auto_password = Faker::Internet.password(10).to_s

  factory :user do
    email

    password { auto_password }
    password_confirmation { auto_password }

    factory :invalid_user do
      email { nil }
    end
  end
end
