FactoryBot.define do

  factory :user do
    name                            {"opop"}
    email                           {"kkk@gmail.com"}
    
    encrypted_password              {"test1234"}
    password_confirmation           {"test1234"}

  end

  

end