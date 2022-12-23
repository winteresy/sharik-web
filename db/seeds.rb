

User.create(
      :email                 => "admin@xxxxx.xxx",
      :password              => "123456",
      :password_confirmation => "123456",
      :username              => "winteresy",
      :name                  => "Алиса",
      :surname               => "Гурова",
      :dog_name              => "Юки",
      :dog_breed             => "Акита-ину",
      :dog_sex               => false,
      :dog_age               => "2"
  )
  User.all.each do |u|
    10.times do |i|
        u.posts.create(title: "post #{i+1} of #{u.email}", text: 'Я собираюсь гулять! Кто со мной?'  )
    end
end