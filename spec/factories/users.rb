FactoryBot.define do
  factory :user do
   name                  {'ใ'}
   nickname              {'ใในใ'}
   password              {'aaa111'}
   password_confirmation {'aaa111'}
   email                 {Faker::Internet.free_email}
  end
end