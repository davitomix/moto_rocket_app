# Moto-Rocket Web App :rocket:
A Twitter-like web app where you can see posts about motorcycles. :bike: 👨‍💻
- Some of the core features of the platform:
- :arrow_right: Sign up, log in & log out.
- :arrow_right: User profile.
- :arrow_right: Following feature. 
- :arrow_right: Posts. 
- :arrow_right: News Feed. 
- :arrow_right: Password reset. 
- :arrow_right: Account activation. 

## Desktop
![screenshot](./main.gif)

## Mobile
<p align="center">
  <img src="./mobile1.gif">
</p>

## Built With
- Ruby
- Rails
- HTML
- Sass
- Bootstrap Framework
- Rspec
- Rubocop

## Getting started :dart:
To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Then, create some moc data for interaction:

```
$ rails db:seed
```

## Automated Tests :space_invader:
Run the test suite to verify that everything is working correctly:

```
$ rspec spec/
```

```
$ rubocop
```

## Deploy :rocket:
If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

## Usage 
Create a new account using the sign up button and fill the form or you can use these credentials :arrow_right: user: 'user2' | password: 'password'
Login and start using this app like any other social app, you can create posts, follow another users and accept/reject followers!

## Video Explanation
[:video_camera:](https://www.loom.com/share/d221d13ad200443db124d6d9b6c5de88)

## Future Implementations :fast_forward:
- Like posts.
- Comment posts.
- Like comments. 
- Edit, Update & Destroy comments.
- Image comments.

## Authors

👤 **David Martínez**

- Github: [@davomartinez-dev](https://github.com/davomartinez-dev)
- Twitter: [@davomartinezdev](https://twitter.com/davomartinezdev)
- LinkedIn: [David Martínez](https://www.linkedin.com/in/davidelimartinez/)

## Heroku Live Version :computer:
- [Live version 🧁](https://rocket-moto-mx.herokuapp.com)
- Try it! Join with these credentials :arrow_right: user: 'user2' | password: 'password' :rocket:

## 🤝 Contributing
Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support
Give a ⭐️ if you like this project!

## Source :gem:
Special thanks to Gregoire Vella. This project is based on his design.
[Gregoire Villa on Behance](https://www.behance.net/gregoirevella)

## 📝 License
[![CC BY-SA 4.0][cc-by-sa-shield]][cc-by-sa]

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0
International License][cc-by-sa].

[![CC BY-SA 4.0][cc-by-sa-image]][cc-by-sa]

[cc-by-sa]: http://creativecommons.org/licenses/by-sa/4.0/
[cc-by-sa-image]: https://licensebuttons.net/l/by-sa/4.0/88x31.png
[cc-by-sa-shield]: https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg

