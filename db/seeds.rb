User.create!(email: 'example@railstutorial.org',
  password: 'foobar',
  password_confirmation: 'foobar')

49.times do |n|
email = "example-#{n + 1}@railstutorial.org"
password = 'password'
User.create!(email: email,
   password: password,
   password_confirmation: password)
end