FactoryBot.define do
  factory :user do
    name { "Name" }
    last_name { "Father" }
    second_last_name { "Mother" }
    birthdate { "1985-10-21" }
    # rfc { "MyString" }
    # count { 1 }
  end
end
