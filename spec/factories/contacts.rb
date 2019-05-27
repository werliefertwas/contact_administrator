FactoryBot.define do
  factory :contact do
    last_name  { "Bond" }

    trait :confirmed do
      status { 1 }
    end

    trait :declined do
      status { 2 }
    end
  end
end
