FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.initials(number: 2)}
    email                 {Faker::Internet.free_email}
    password              {"111aaa"}
    password_confirmation {password}
    first_name            {"花子"}
    last_name             {"田中"}
    first_name_kana       {"ハナコ"}
    last_name_kana        {"タナカ"}
    birthday              {"2000-01-01"}
  end
end