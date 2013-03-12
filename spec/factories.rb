FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "Dev #{n}" }
    sequence (:email) { |n| "dev_#{n}@user.com" }
  
    factory :admin do
      admin true
    end
  end

  factory :micropost do
  	content "Loren ipsum"
  	user
  end
end