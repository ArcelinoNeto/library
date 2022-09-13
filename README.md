# About
This project is the result of a challenge proposed by the company APP NOZ.
The project proposal is the creation of an API to manage a "Library"

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

4. Start the project
```
rails s
```
