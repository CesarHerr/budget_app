<a name="readme-top"></a>

<div align="center">
  <h3><b>Paid Ups</b></h3>
</div>


<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
 - [🚀 Live Demo ](#-live-demo-)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Recipe App <a name="Paids Up"></a>

**Recipe App** 

This application is designed to help you manage your finances and expenses, assisting in maintaining clear financial organization for personal, family, or work-related finances.


## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
<summary>Ruby on Rails</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on rails</a></li>
  </ul>
</details>

<details>
<summary>Rspec</summary>
  <ul>
    <li><a href="https://rspec.info/">Rspec</a></li>
  </ul>
</details>

<details>
<summary>Capybara</summary>
  <ul>
    <li><a href="https://teamcapybara.github.io/capybara/">Capybara</a></li>
  </ul>
</details>

<details>
<summary>Tailwind</summary>
  <ul>
    <li><a href="https://tailwindcss.com/">Tailwind</a></li>
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>


### Setup <a name="setup"></a>

1. Ensure you have Ruby 3.2.2 at least, installed on your system. You can check your Ruby version in the terminal by running:

```
ruby -v
```

2. You can clone the project :

Using HTTPS:

```
git clone https://github.com/CesarHerr/budget_app.git
```

### Installation <a name="install"></a>

To run this project locally, follow these steps:

1. Open your terminal or command prompt.

2. Navigate to the directory where you have cloned or downloaded the Recipe App repository.

3. Run the following command to install any required dependencies:

```
bundle install
```
4. You need to make sure you have PostgreSQL installed and configured on your local computer   beforehand, then create the database for the project:

```
rails db:create
```

5. Now you need to create the tables and relationships that the project needs:

```
rails db:migrate
```

### Usage <a name="usage"></a>

1. Once the setup is complete, ensure you are still in the directory containing the Recipe App files.

2. To run the app, execute the following command:

```
rails s
```

### Tailwind <a name="tailwind"></a>

1. You can install tailwind to use it in the project.

```
npm install -D tailwindcss

npx tailwindcss init
```
2. You can run de server using this:

```
 ./bin/dev   
```


### Tests <a name="tests"></a>

To run the tests ensure you are in the directory containing the test files.

1. Run the tests using the following command:

```
rspec
```

(optional) If you have problem with a different version of 'regexp_parser', you can run the tests with the
version of the gemfile with this command:

```
bundle exec rspec 
```

- All tests should pass without any errors or failures, ensuring that the code and its methods are functioning correctly.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🚀 Live Demo <a name="live-demo"></a>

> You can see the live demo of this project: [click here](www.)

> You can see the Video presentation: [click here](https://www.loom.com/share/77d634395995413983b2e9fb229a2454?sid=50ebbe57-4026-4927-94e3-2c9c5dd330ca)


## 👥 Author <a name="author"></a>

👤 **César Herrera**

- GitHub: [@cesarherr](https://github.com/cesarherr)
- LinkedIn: [CesarHerr](https://www.linkedin.com/in/cesarherr/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🔭 Features <a name="future-features"></a>

- [x] **Create a Database**
- [x] **Add Migrations**
- [x] **Add Models**
- [x] **Add Controllers**
- [x] **Add Views**
- [x] **Add tests**
- [x] **Show Categories at index page**
- [x] **Show Categories by users**
- [x] **Show transactions by Category**
- [x] **Authentication User**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/CesarHerr/budget_app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## ⭐️ Show your support <a name="support"></a>

If you like this project give it a star ⭐️

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 🙏 Acknowledgments <a name="acknowledgements"></a>

**I would like to [Gregoire Vella](https://www.behance.net/gregoirevella) for the design idea, and thanks to Microverse for giving us the opportunity to learn and grow as developers. 🌟**

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>