User.create!(username: "user",
             email: 'example@railstutorial.org',
             password: 'foobar',
             password_confirmation: 'foobar',
             admin: true)

49.times do |n|
  username = "user-#{n + 1}"
  email = "example-#{n + 1}@railstutorial.org"
  password = 'password'
  User.create!(username: username,
               email: email,
               password: password,
               password_confirmation: password)
end