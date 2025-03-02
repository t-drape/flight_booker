# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

This is my implementation of the flight booker project from TheOdin Project. Which can be found at: https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker


Helpful articles:

url: https://develclan.com/seeding-database-ruby-on-rails/#:~:text=First%2C%20you%20destroy%20all%20movies,Let's%20run%20it!&text=You%20can%20execute%20this%20command,line%20containing%20the%20destroy%20statement.

url: https://www.writesoftwarewell.com/how-to-drop-table-rails/#:~:text=Drop%20table%20without%20migration,class%20to%20drop%20that%20table.


Errors, and how I fixed them:

First, I ran into trouble with my first form returning the full datetime object as a string, instead of just numbers. After a couple hours, I found out how to fix it.
Instead of passing a string or a symbol, pass the function. How I understand this to work is,
1. The Flight calls the display function, flight_date_formatted in my case.
2. The form submits Flight.return_value. In my failed cases, I tried to have :start or 'start' as my return value. This worked to put Flight.start as the return string. But I wanted Flight.start formatted in YY/MM/DD/HH/mm. So, I tried to call the function directly on either the symbol or the string. As you can imagine, neither classes have a function called start_stripped. In the end, the solution was to simply pass the function as the return value, so the form calls Flight.start_stripped, which returns just the numbers I wanted.