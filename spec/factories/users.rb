FactoryBot.define do
  factory :user do
   name                  {'あ'}
   nickname              {'テスト'}
   password              {'aaa111'}
   password_confirmation {'aaa111'}
   email                 {Faker::Internet.free_email}
  end
end