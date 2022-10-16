# README
This is a simple app to show a list of providers.
### _Make sure you have installed on your machine_

Ruby -v 3.1.2
Rails -v 7.0.2
PostgreSQL -v 12.8

Then clone this repository and inside the project folder run the following commands:
```sh
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s
```
To run the app and the Tailwind styles works, run the following command
```sh
./bin/dev
```