namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Dev User", email: "dev@user.com")

    99.times do |n|
      name  = Faker::Name.name
      email = "dev-#{n+1}@user.com"
      User.create!(name: name, email: email)
    end

    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end
end