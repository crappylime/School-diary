FactoryGirl.define do
  factory :payment do
    amount { rand(999..1999) }
    payment_date { Faker::Date.backward(14) }
    student
  end

end
