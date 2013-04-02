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

  factory :festival do
    name "Electric Daisy Carnival NYC"
    logo "edc-nyc-logo.jpg"
    date Date.new(2013, 5, 17)
    lineup "To be announced"
    details "Electric Daisy Carnival is a fun electronic/house music festival!"
    camping false
    month 5
  end
end