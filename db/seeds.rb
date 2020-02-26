User.create!(username: 'Example User',
  email: 'example@railstutorial.org',
  password: 'foobar',
  password_confirmation: 'foobar')

49.times do |n|
name  = Faker::Name.name
email = "example-#{n + 1}@railstutorial.org"
password = 'password'
User.create!(username: name,
   email: email,
   password: password,
   password_confirmation: password)
end