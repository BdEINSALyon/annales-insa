FactoryGirl.define do
  factory :document do
    sequence(:title) { |n| "Test #{n}" }
    sequence(:scholar_year) { |n| n }
    sequence(:publication_year) { |n| n }
    validated false
  end
end