# README

* Ruby version 2.7.1
* Rails verion 6.0.3.6
* Run `bundle install` to install dependencies
* Ensure you have  postgress database up and running and set up your credentials in the `database.yml` file
* Create database by running the command `rake db:create` and rake `db:migrate`
* Run the command `rake db:seed` to dd seed data to the database
* Run the command `rspec` to run the test suite
* Run `yarn install` to install packages
* To start the application, run the command `rails s`, an application will be started on your local server and can be accesed at the location localhost:3000

### Demo application: 
The demo application has been hosted on heroku, please view it [here](https://whispering-crag-05006.herokuapp.com/)

### Authentication and Authorization
The [devise gem](https://github.com/heartcombo/devise) has been used to handle user authentication and [pundit](https://github.com/varvet/pundit) has been used to handle user authorization. 

Admin account: 
```
user: admin@gmail.com
password: topsecret
```

User account: 
```
user0@gmail.com
password: topsecret
```

