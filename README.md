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

* Ruby 2.3.5
* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## FINAL PRODUCT
Here are some examples of what "Jungle" looks like. A user can sign up/login. They can add product items to their cart and checkout using stripe via test card. As an administrator, you can add new products and categories for those products. However yo must enter secure admin username and password for access.

<img alt="signup page" width="400" src="https://github.com/KatieHerda/jungle/blob/master/docs/signup.png?raw=true"> <img/>

<img alt="home page" width="400" src="https://github.com/KatieHerda/jungle/blob/master/docs/home_page.png?raw=true"> <img/>

<img alt="my cart page" width="400" src="https://github.com/KatieHerda/jungle/blob/master/docs/my_cart.png?raw=true"> <img/>

<img alt="check out with stripe" width="400" src="https://github.com/KatieHerda/jungle/blob/master/docs/checkout.png?raw=true"> <img/>

<img alt="admin products page" width="400" src="https://github.com/KatieHerda/jungle/blob/master/docs/admin_products.png?raw=true"> <img/>