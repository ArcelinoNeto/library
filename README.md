# Library

Library is a Ruby on Rails application for managing a library system. The project includes user authentication, role-based authorization, book management, search filters, sorting and pagination.

The application was initially created from a technical challenge and later structured as a portfolio project to demonstrate backend organization, Rails conventions, access control and business rule implementation.

## Features

* User authentication with Devise
* Role-based authorization with CanCanCan
* Book management
* User management
* Search and sorting filters with Searchlight
* Pagination with Kaminari
* PostgreSQL database
* Admin/librarian access control

## Tech Stack

* Ruby 2.7.1
* Ruby on Rails 6.1.6.1
* PostgreSQL
* HTML
* CSS
* JavaScript
* Devise
* CanCanCan
* Searchlight
* Kaminari

## Setup

Clone the repository:

```bash
git clone https://github.com/ArcelinoNeto/library.git
cd library
```

Install dependencies:

```bash
bundle install
```

Set up the database:

```bash
rails db:setup
```

Populate the database with development data:

```bash
rails dev:setup
```

Create an admin user:

```bash
rails c
```

```ruby
User.create!(
  name: 'Admin',
  email: 'admin@admin.com',
  role: 'librarian',
  password: '123456',
  password_confirmation: '123456'
)
```

Available roles:

```text
librarian
restricted_user
```

Start the server:

```bash
rails s
```

## Project Purpose

This project demonstrates the implementation of a Rails monolith application with authentication, authorization, search, pagination and basic library management workflows.

The goal is to show practical use of Rails conventions, domain modeling and access control in a real-world inspired application.
