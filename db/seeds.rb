User.create!(username: "usera",
             email: 'example@railstutorial.org',
             password: 'foobar',
             password_confirmation: 'foobar',
             admin: true)

49.times do |n|
  username = "user#{n + 1}"
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(word_count: 5)
  users.each { |user| user.posts.create!(content: content) }
end