FactoryGirl.define do
  factory :user do
    email { |n| "bob.#{n}@example.com" }
    password 'passwourd'

    trait :admin do
      is_admin true
    end

    factory :admin, traits: [:admin]
  end
end