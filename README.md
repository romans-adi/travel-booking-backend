<!-- PROJECT DESCRIPTION -->

# <a name="about-project"> Traveli Backend </a>

The Traveli app is a comprehensive travel management platform that caters to both individual users and travel agencies. With an intuitive backend system, it allows users to plan and customize their dream vacations while offering agencies the tools they need to create enticing travel packages.

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

- **Database Schema**: The project includes an auto-generated database schema using ActiveRecord, with tables for "places," "travels," "reservations," and "users." This schema captures essential data for a travel booking platform.
- **API Endpoints**: The Rails application defines API endpoints for various actions. These endpoints include functionalities for places, travels, reservations, and users, enabling users to interact with the platform.
- **User Authentication**: The application utilizes Devise for user authentication, providing features such as user registration, login, and logout. It also includes JWT-based authentication for secure access to protected endpoints.
- **Authorization**: The project implements role-based authorization using CanCanCan, ensuring that users have the appropriate permissions to perform specific actions. For instance, agencies can manage places and travels, while regular users can create reservations.
- **CORS Configuration**: To handle Cross-Origin Resource Sharing (CORS), the application has a middleware configuration allowing cross-origin AJAX requests. This facilitates interactions with the API from frontend applications.
- **Data Seeding**: The project includes data seeding using Faker gem. It populates the database with sample data for places and associated travels, which can be used for testing and demonstration purposes.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🌐 Live Demo

Explore the live demo of the Traveli App to see it in action:

[Traveli](https://traveli.onrender.com/)

Feel free to interact with the application to get a firsthand experience of its features and functionalities. Please note that the live demo represents a snapshot of the project and may not include all the latest updates and features. For the most up-to-date version of the application, you can refer to the GitHub repository.

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

3. You have to populate the database with data seeds:

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

We extend our special thanks to [Mohamed Gamil Eldimardash](https://github.com/MMGGYY66) for his valuable contributions to the initial stages of our project, where he played a crucial role in creating models and establishing relations in the backend.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🌟 Future Features <a name="future-features"></a>

- **User Profiles**: Use the "/users" endpoint to retrieve the current user's profile information, enhancing the user experience and personalization (for users).
- **Travel Packages**: Update the existing schema and enhance the relationship between Travels and Places to enable the creation of "Travel Packages" (for agencies).
- **Improve Styles**: Incorporate animations and enhance the website's dynamics to make it more visually engaging and lively.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

We welcome contributions to enhance the functionality and user experience of the Traveli application. If you have any ideas, suggestions, or bug reports, feel free to open an issue or submit a pull request. Let's share ideas!

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

We would like to thank the following individuals and projects for their contributions and inspiration:

[Ruby official](https://www.ruby-lang.org/) :  Special thanks to Yukihiro Matsumoto, the creator of the Ruby programming language, for giving me this powerful and elegant tool to build amazing applications. We are also grateful to the Ruby Core Team and the passionate Ruby community for their continuous support and contributions.

[Ruby on Rails](https://rubyonrails.org/): A big thank you to the creators, contributors, and maintainers of the Ruby on Rails framework. Your efforts have empowered countless developers to build powerful and scalable web applications.

<!-- LICENSE -->

## 📄 License <a name="license"></a>

This project is [MIT](LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
