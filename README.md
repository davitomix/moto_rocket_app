# Moto-Rocket Web App :rocket:
A Twitter-like web app where you can see posts about motorcycles. :bike: 👨‍💻
<br> Some of the core features of the platform:
<br> :arrow_right: Sign up, log in & log out.
<br> :arrow_right: User profile.
<br> :arrow_right: Following feature. 
<br> :arrow_right: Posts. 
<br> :arrow_right: News Feed. 
<br> :arrow_right: Password reset. 
<br> :arrow_right: Account activation. 

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

## Testing :space_invader:

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

## Future Implementations :fast_forward:
:arrow_right: Like posts.
<br> :arrow_right: Comment posts.
<br> :arrow_right: Like comments. 
<br> :arrow_right: Edit, Update & Destroy comments.
<br> :arrow_right: Image comments.

## Authors
👤 **David Eli Martinez Garcia**

- Github: [@davitomix](https://github.com/davitomix)
- Linkedin: [linkedin](https://linkedin.com/linkedinhandle)
- Mail: [davidelimg1@gmail.com](mailto:davidelimg1@gmail.com)

## Heroku Live Version :computer:
- [Live version 🧁](https://rocket-moto-mx.herokuapp.com) <br>
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

