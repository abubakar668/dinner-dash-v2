# README

This is the Online Ordering System from Restaurants named Dinner Dash.
Users include:
- Administrator
- User
- Guest User

Admin Module includes:
- Manages Restaurants
- Manage Items
- Manage Categories
- Manage Orders

User Module includes:
- View Restaurants and Items
- Order Items through cart
- View Orders history

# Ruby version
> 2.7.2

# Rails version
> 5.2.6

# System dependencies
- Active Storage
- Cloudinary
- Devise
- Bootstrap
- rubocop
- Pundit
- toastr

# Configuration
- Rubocop configuration settings
- SMTP settings
- Cloudinary credentials
- Gmail credentials for mailer


# Database creation
- rails db:create
- rails db:migrate

# Database version

- PostgreSQL 12.8

# Services (job queues, cache servers, search engines, etc.)
- Active Jobs

# Mailer and Cloudinary Credentials
- Add the secrets as keys in credentials.yml.enc
- Decrypt this file using master key
- Place secrets in it and save it
- Use these secrets anywhere in your application using
          
        Rails.application.credentials.mail[:password]

# Deploying master key
- Create a RAILS_MASTER_KEY ENV variable
- Use following command for heroku

        heroku config:set RAILS_MASTER_KEY=<your-master-key-here>

# Deployment instructions
- SignUp to Heroku
- Create a site
- Connect Github repository to it
- Deploy branch on it
- Run the site on provided link 

