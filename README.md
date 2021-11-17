# Jungle
A mini e-commerce application built with Rails 4.2. The project was originally created by Lighthouse Labs and was update by myself for purposes of learning Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## FINAL PRODUCT
Here are some examples of what "Jungle" looks like. A user can sign up/login. They can add product items to their cart and checkout using stripe via test card. As an administrator, you can add new products and categories for those products. 

<img alt="login page" width="400" src="https://github.com/smalott16/lhl_midterm/blob/master/docs/login.png?raw=true"> <img/>

<img alt="list home page" width="400" src="https://github.com/smalott16/lhl_midterm/blob/master/docs/list-home-page.png?raw=true"> <img/>

<img alt="category page" width="400" src="https://github.com/smalott16/lhl_midterm/blob/master/docs/category-page.png?raw=true"> <img/>
