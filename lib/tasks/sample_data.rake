namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Dev User", email: "dev@user.com")

    99.times do |n|
      name  = Faker::Name.name
      email = "dev-#{n+1}@user.com"
      User.create!(name: name, email: email)
    end
  end
end