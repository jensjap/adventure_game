FactoryGirl.define do
  factory :user do
    name     "Jens Jap"
    email    "jensjap@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
