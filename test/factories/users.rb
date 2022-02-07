FactoryBot.define do
  factory :user do
    name { "MyString" }
    last_name { "MyString" }
    second_last_name { "MyString" }
    birthdate { "2022-02-06" }
    rfc { "MyString" }
    count { 1 }
  end
end
