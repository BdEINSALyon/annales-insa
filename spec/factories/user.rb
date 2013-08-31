FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "User#{n}" }
    email { "#{name.downcase}@example.com" }
    password 'passwourd'

    trait :admin do
      is_admin true
    end

    factory :admin, traits: [:admin]
  end
end