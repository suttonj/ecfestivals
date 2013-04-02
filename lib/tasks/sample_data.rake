namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_microposts
    make_relationships
    make_festivals
  end

  def make_users
    admin = User.create!(name: "Dev User", email: "dev@user.com")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "dev-#{n+1}@user.com"
      User.create!(name: name, email: email)
    end
  end

  def make_microposts
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      users.each { |user| user.microposts.create!(content: content) }
    end
  end

  def make_relationships
    users = User.all
    user = users.first
    followed_users = users[2..50]
    followers      = users[3..40]
    followed_users.each { |followed| user.follow!(followed) }
    followers.each      { |follower| follower.follow!(user) }
  end

  def make_festivals
   # 3.times do
      name = "Electric Daisy Carnival NYC"
      logo = "edc-2.jpg"
      date = Date.new(2013, 5, 17)
      lineup = "To be announced"
      details = "The world's premier touring electronic \
                dance music festival is traveling to New York!"
      camping = false
      month = 5
      url = "electricdaisycarnival.com"
      Festival.create!(name: name, logo: logo, date: date, 
        lineup: lineup, details: details, camping: camping, month: month)
  # end

   # 3.times do
      name = "Firefly"
      logo = "firefly-logo.jpg"
      date = Date.new(2013, 6, 17)
      lineup = "Red Hot Chili Peppers,MGMT,Foster the People,Vampire Weekend,\
        Calvin Harris,Yeah Yeah Yeahs,Ellie Goulding,Passion Pit,\
        Edward Sharpe & The Magnetic Zeros,Grizzly Bear,Tom Petty And \
        The Heartbreakers,Matt & Kim,The Lumineers,The Avett Brothers,\
        Kendrick Lamar,Public Enemy,Toro Y Moi,The Walkmen,Alabama Shakes,\
        The Joy Formidable,Dispatch,Dr. Dog,Crystal Fighters,Zedd,Azealia \
        Banks, Dragonette,Django Django,Japandroids,Selah Sue,The White Panda,\
        Dan Deacon,Big Gigantic,Krewella,Atlas Genius,Youngblood Hawke,\
        The Spinto Band,Haim,Capital Cities,Lord Huron,A Silent Film,NEIGHBOURHOOD,\
        St. Lucia,Action Bronson,Kishi Bashi,Foxygen,Young Empires,L.P.,Hey \
        Marseilles,The Chevin,ZZ Ward,CHVRCHES,Wild Belle,Jim James,The Royal \
        Concept,JC Brooks & The Uptown Sound,Blondfire,Trails and Ways,Kopecky \
        Family Band,Twenty One Pilots,The Apache Relay,The Last Royals,Manufactured \
        Superstars,Delta Rae,Imaginary Cities,Conner Youngblood,Robert DeLong,\
        Amanda Palmer and the Grand Theft Orchestra,Leagues,The Last Bison,Wheeler \
        Brothers,Sister Sparrow and the Dirty Birds"
      details = "A three-day music festival held on the grounds near\
        Delaware's Dover International Speedway. More than 60 acts will \
        perform on four stages across 87 acres. In addition to the music, \
        organizers promise everything from craft beers and multiple food \
        options from vendors to a wine garden and hot air balloon rides on site."
      camping = true
      month = 6
      url = "fireflyfestival.com"
      Festival.create!(name: name, logo: logo, date: date, 
        lineup: lineup, details: details, camping: camping, month: month)
  #s  end

  #  3.times do
      name = "Camp Bisco"
      logo = "camp-bisco-logo.jpg"
      date = Date.new(2013, 7, 17)
      lineup = "The Disco Biscuits,Bassnectar,Passion Pit,STS9,Animal Collective,\
        Umphrey's McGee,Flux Pavilion,Macklemore & Ryan Lewis,LOTUS,Wolfgang Gartner\
        Boys Noize,Squarepusher,Tommy Trash,Dillon Francis"
      details = "Camp Bisco is an outdoor music festival held at the \
        beautiful Indian Lookout Country Club, a world-class property \
        located near Albany, NY. Camp Bisco is a 3-day rain-or-shine event \
        with camping. "
      camping = true
      month = 7
      url = "campbisco.net"
      Festival.create!(name: name, logo: logo, date: date, 
        lineup: lineup, details: details, camping: camping, month: month)
  #  end
  end
end