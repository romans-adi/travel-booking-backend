<!-- PROJECT DESCRIPTION -->

# <a name="about-project"> Traveli Backend </a>

This project serves as the API backend for the [Traveli](https://github.com/romans-adi/travel-booking-frontend) project.

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [Tech Stack](#tech-stack) 🛠️
- [Key Features](#key-features) ✨
- [Getting Started](#getting-started) 🚀
  - [Setup](#setup) 🔧
  - [Installation](#installation) ⚙️
  - [Usage](#usage) 🧰
  - [Troubleshooting](#troubleshooting) :nut_and_bolt:
- [Authors](#authors) 🖋️
- [Future Features](#future-features) 🌟
- [Contributing](#contributing) 🤝
- [Support](#support) 🆘
- [Acknowledgments](#acknowledgments) 🙏
- [License](#license) 📄

<!-- TECH STACK -->

## Tech Stack 🛠️ <a name="tech-stack"></a>

  <ul>
     <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
     <li><a href="https://rubyonrails.org/">Ruby On Rails</a></li>
     <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FEATURES -->

## ✨ Key Features<a name="key-features"></a>

- [x] Greetings are stored in the database's table using PostgreSQL.
- [x] Routes are configured to receive data via the root "/" path.
- [x] Rack CORS is set up to allow external applications to use the API endpoint with the GET request method.
- [x] Pre-determined Places data is populated using database seeds.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 🚀 Getting Started<a name="getting-started"></a>

### Setup 🔧<a name="setup"></a>

1. Ensure you have Ruby installed on your system. You can check your Ruby version in the terminal by running:

```
ruby -v
```

If Ruby is not installed, you can download and install it from the official Ruby website.

2. Ensure you have Ruby on Rails (RoR) installed on your system. You can check your Rails version in the terminal by running:

```
rails -v
```

If Rails is not installed, you can install it using the following command:

```
gem install rails
```

3. To get a local copy up and running, follow these steps.
Choose the directory on your local machine where you want to copy project. For example:

```
cd /home/user/name-of-your-directory
```

Clone the project using one of the options.

Using SSH-key:

```
git clone git@github.com:romans-adi/travel-booking-backend.git
```
Using HTTPS:

```
git clone https://github.com/romans-adi/travel-booking-backend.git
```

You can also create the new directory just adding the name of it in the end of command. For example:

```
git clone https://github.com/romans-adi/travel-booking-backend.git traveli-backend
```
### Installation ⚙️<a name="installation"></a>

To run this project locally, follow these steps:

1. Open your terminal or command prompt.

2. Navigate to the directory where you have cloned or downloaded the Traveli Backend repository.

3. Run the following commands to install any required dependencies:
```bundle install```

### Usage 🧰<a name="usage"></a>

1. Once the setup is complete, ensure you are still in the directory containing the Traveli Backend files.

2. To set up the database and seed initial data, run the following commands:

```
rails db:create
rails db:migrate
```

This will create the database and apply migrations.

3. You have to populate the database with messages:

```
rails db:seed
```

4. To run the app in development mode, execute the following command:

```
rails server
```

5. The app will be accessible at `http://localhost:3000` in your web browser.

6. If you have future features like GUI or interactive mode, follow the specific instructions provided for those features in the app's documentation.

### Troubleshooting :nut_and_bolt:<a name="troubleshooting"></a>

#### Rendering

If you encounter any issues related to unexpected behavior after making changes, try the following steps:

1. Delete the `tmp` directory located in the root of your project:

```
rm -rf tmp/
```

#### Database

 If you encounter any problems related to data or database inconsistencies, you can follow these steps to reset your database:

1. Ensure Server/Process Shutdown: Make sure that your Rails server or any related processes are not running. You should not have any active connections to the database.

2. Drop the Database:

```
rake db:drop
```

or

```
rails db:drop
```

3. Recreate the Database [how to](#usage)

After dropping the database, you can recreate it from scratch. Run migrations to set up the schema.

If problems persist, you can refer to the official [Ruby on Rails Guides](https://guides.rubyonrails.org/getting_started.html) for more troubleshooting tips and guidance.

<!-- AUTHORS -->

## 🖋️ Authors & Contributors<a name="authors"></a>

👤 **Daniel Carrera**

- GitHub: [@carreraprogrammer](https://github.com/carreraprogrammer)
- Twitter: [@carreraprogrammer](https://twitter.com/carreraprog)
- LinkedIn: [Daniel Carrera](https://www.linkedin.com/in/carreraprogrammer/)

👤 **Romans Š.**

- GitHub: [@romans-adi](https://github.com/romans-adi/)
- LinkedIn: [Romans Špiļaks](https://www.linkedin.com/in/obj513/)

👤 **Mohamed Gamil Eldimardash**

- GitHub: [@github](https://github.com/MMGGYY66)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/mohamed-eldimardash-0023a3b5/)
- Twitter: [twitter](https://twitter.com/MOHAMEDELDIMARd)
- Facebook: [facebook](https://www.facebook.com/MOHAMED.ELDIMARDASH/)
- StackOverflow: [stackoverflow](https://stackoverflow.com/users/13605630/mohamed-gamil-eldimardash)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🌟 Future Features <a name="future-features"></a>

- [ ] Add more endpoints.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

I welcome contributions to enhance the functionality and user experience of the Traveli Application. If you have any ideas, suggestions, or bug reports, feel free to open an issue or submit a pull request. Let's share ideas!

If you'd like to contribute to this project, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your forked repository.
5. Submit a pull request to the main repository, explaining your changes in detail.

Please adhere to the coding conventions and guidelines specified in the project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## 🆘 Support <a name="support"></a>

If you encounter any issues or have any questions or suggestions, please open an issue on the [issue tracker](../../issues/).
Furthermore, if you would like to get in touch with me, you can find our contact information in the <a href="#authors">Authors</a> section.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🌲 Acknowledgements <a name="acknowledgments"></a>

I would like to thank the following individuals and projects for their contributions and inspiration:

[Ruby official](https://www.ruby-lang.org/) :  Special thanks to Yukihiro Matsumoto, the creator of the Ruby programming language, for giving me this powerful and elegant tool to build amazing applications. I am also grateful to the Ruby Core Team and the passionate Ruby community for their continuous support and contributions.

[Ruby on Rails](https://rubyonrails.org/): A big thank you to the creators, contributors, and maintainers of the Ruby on Rails framework. Your efforts have empowered countless developers to build powerful and scalable web applications.

<!-- LICENSE -->

## 📄 License <a name="license"></a>

This project is [MIT](LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
