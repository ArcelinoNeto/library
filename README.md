# About
This project is the result of the challenge proposed by the Levante company.
The project proposal is a library management system.

# Project
The project was built following the rules defined by the staff of [Levante](https://gist.github.com/caioagiani/66b26f85ab6db506fecb9a90a04389f7).

Preview of the project in progress:
Click [here](https://www.loom.com/share/9329ecca9c4048ba8ee99243433a66a0)

# Technology stack
This is application using 
- ruby on rails ``6.1.6.1``
- ruby ``2.7.1``
- html
- css
- javascript
- postgresql

# Database diagram
![library](https://github.com/ArcelinoNeto/library/blob/master/library.png)

# Additional definitions
- Authentication with gem devise
- Authorization with the cancancan gem
- Filters (search and sort) with the Searchlight gem
- Pagination with the Kaminari gem

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

5. Start the project
```
rails s
```
