# About
This project is the result of a challenge proposed by the company Levante.
The project proposal is the creation of an application for the management of a "Library".

# Project
The project was built following the rules defined by the staff of [Levante](https://gist.github.com/caioagiani/66b26f85ab6db506fecb9a90a04389f7).

Preview of the project in progress:
Click [here](https://www.loom.com/share/9329ecca9c4048ba8ee99243433a66a0)

# Technology stack
This is application using 
- ruby on rails ``6.1.6.1``
- ruby ``2.7.1``
- postgresql

# Database diagram
![library](https://github.com/ArcelinoNeto/library/blob/master/library.png)

## Set up

1. Clone the project
```
git clone https://github.com/ArcelinoNeto/library.git
```
```
cd library
```
2. Install dependencies
``` 
bundle install
``` 

3. Database configuration 

To configure the database, run the command below
```
rails db:setup
```
To populate with data for testing run the command below
```
rails dev:setup
```
4. Create admin user with `rails create_user`.

Enter rails console

```
rails c
```

Run the command

```
User.create!(name: 'Admin', email: 'admin@admin.com', role: 'librarian', password: '123456', password_confirmation: '123456')
```
Role Options:
librarian || restricted_user

1. Start the project
```
rails s
```
