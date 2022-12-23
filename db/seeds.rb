# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
2.times do |i|
    User.create(email: "user-#{i+1}@example.com", password: "password", password_confirmation: "password")
end
User.all.each do |u|
    10.times do |i|
        u.posts.create(title: "post #{i+1} of #{u.email}", text: 'Я собираюсь гулять! Кто со мной?'  )
    end
end
# user = User.new(
#       :email                 => "admin@xxxxx.xxx",
#       :password              => "123456",
#       :password_confirmation => "123456",
#       :username              => "winteresy",
#       :name                  => "Алиса",
#       :surname               => "Гурова",
#       :dog_name              => "Юки",
#       :dog_breed             => "Акита-ину",
#       :dog_sex               => false,
#       :dog_age               => "2"
#   )
#   user.save!