FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end
  
  factory :user do
    first_name 'John'
    last_name 'Doe'
    email { generate :email }
    password 'password'
    password_confirmation 'password'
    phone '5555555555'
    ssn 1234
    company "ABC Company"
  end
  
  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email { generate :email }
    password 'password'
    password_confirmation 'password'
    phone '5555555555'
    ssn 1234
    company "ABC Company"
  end
  
  factory :non_authorized_user, class: "User" do
    first_name 'Non'
    last_name 'Authorized'
    email { generate :email }
    password 'password'
    password_confirmation 'password'
    phone '5555555555'
    ssn 1234
    company "ABC Company"
  end
end