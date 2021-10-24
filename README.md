# Rails Template

[![Maintainability](https://api.codeclimate.com/v1/badges/0060966b181b26405c22/maintainability)](https://codeclimate.com/github/TristanToye/rails-template/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/89fc762ec583cc1b84cd/test_coverage)](https://codeclimate.com/github/TristanToye/rails-template/test_coverage) [![CircleCI](https://circleci.com/gh/TristanToye/rails-template.svg?style=svg)](https://circleci.com/gh/TristanToye/rails-template) ![License](https://img.shields.io/github/license/tristantoye/rails-template.svg?style=flat) [![Price](https://img.shields.io/badge/price-FREE-0098f7.svg)](https://github.com/TristanToye/rails-template/blob/master/LICENSE) ![Issues](https://img.shields.io/github/issues-raw/tristantoye/rails-template.svg?style=flat) ![Monitoring](https://img.shields.io/uptimerobot/status/m781943983-80d12cbd488c39a365d85a41.svg?style=flat) ![Uptime](https://img.shields.io/uptimerobot/ratio/m781943983-80d12cbd488c39a365d85a41.svg?style=flat)
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/TristanToye/rails-template) [![Deploy to Azure](http://azuredeploy.net/deploybutton.png)](https://azuredeploy.net/?repository=https://github.com/TristanToye/rails-template)

A MVP ready template for Rails apps.

Everything used in this repo is open source, free, or optional.

This repo focuses on getting your project setup ASAP with all the tooling to start deploying from your first commit.

## ⬆️ Versions
- [Live Demo (master branch)](http://demo.railstemplate.com)
- [Rails 6.x](https://github.com/TristanToye/rails-template/)
- [Rails 5.x](https://github.com/TristanToye/rails-template/tree/v1.1)
- [Rails 4.x](https://github.com/TristanToye/rails-4-boilerplate)

## ✨ Features
- User Accounts & Authentication: [Devise](https://github.com/plataformatec/devise)
- Feature Switching with a UI: [flipper](https://github.com/jnunemaker/flipper)
- Admin Dashboard UI: [ActiveAdmin](https://github.com/activeadmin/activeadmin)
- Secrets Management: [dotenv](https://github.com/bkeepers/dotenv)
- Livereload for Development: [Guard](https://github.com/guard/guard)
- Upgraded Testing Suite: [RSpec](https://github.com/rspec/rspec), [faker](https://github.com/stympy/faker), [factory_bot](https://github.com/thoughtbot/factory_bot)
- Static Analysis: [Brakeman](https://github.com/presidentbeef/brakeman), [Rubopcop](https://github.com/rubocop-hq/rubocop)
- Continuous Integration: [CircleCI](https://circleci.com), [CodeClimate](https://codeclimate.com)
- Code Coverage Reporting with a UI: [simplecov](https://github.com/colszowka/simplecov)

## 📝 Guides
- [Getting started](https://github.com/TristanToye/rails-template#-getting-started)
- [Local setup](https://github.com/TristanToye/rails-template#-local-setup)
- [Feature Switches](https://github.com/TristanToye/rails-template#-feature-switches)
- [Admin Dashboard](https://github.com/TristanToye/rails-template#-admin-dashboard)
- [Testing](https://github.com/TristanToye/rails-template#-testing)
- [Code Coverage](https://github.com/TristanToye/rails-template#-code-coverage)
- [Static Analysis](https://github.com/TristanToye/rails-template#-static-analysis)
- [Deployment](https://github.com/TristanToye/rails-template#-static-analysis)
- [Continuous Integration](https://github.com/TristanToye/rails-template#-continuous-integration)
- [Mailer Setup](https://github.com/TristanToye/rails-template#-mailer-setup)
- Custom Domain, DNS, & SSL - coming soon

## 📦 Getting Started
To setup the repo locally start by cloning it locally:
```
git clone https://github.com/TristanToye/rails-template.git
cd rails-template
```

## 🔧 Local Setup
Next you need to install all the dependiencies:
- ruby 2.7.0
- rails 6
- node 8.16.0
- postgres 10

To accomplish this I recommend the following:
- install homebrew
- install RVM
- install ruby 2.7.0 with RVM
- install rails 6
- install NVM
- install node 8.16.0 with NVM
- install postgres 10

This guide walks you through it in details: http://railsapps.github.io/installrubyonrails-mac.html

The only issue you might run into is setting up Postgres. If you use the recommend Postgres app (do this). When installing the `pg` gem you will need to run the following:
```
gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/10/bin/pg_config
```

Or you can add the app's config to your `~./bash_profile`:
```
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
```

Once you have everything installed, run bundler to get our gems setup:
```
$ bundle install
```

### 🔒 Setup Secrets
For most credentials we want to use the Rails 5.2 credential management. This article explains it well with examples: https://medium.com/cedarcode/rails-5-2-credentials-9b3324851336

To get started here go delete my credentials located at `/config/credentials.yml.enc`.

We will start by adding a `secret_key_base` to this file:
```
$ rake secret
840f20e6084666b7aabe9d94...
$ EDITOR="code --wait" rails credentials:edit

# In the credentials file add the following
secret_key_base=840f20e6084666b7aabe9d94...
```

We also likely want to handle some environment variables locally. We use a git-ignored file to load them when the app starts.

Create a new file `.env` in the root of the repo. This will load any environment variables you might need to set in the future.

### 🗃 Generate Local Database
Makes sure postgres is running and setup your database:
```
$ rails db:setup db:schema:load
```

Now you should be able to start your rails app and load it in your browser at http://localhost:3000:
```
# to start with spring and all the goodies
$ guard

# OR to start just the rails server
$ rails s
```

## 🐬 Feature Switches
This app uses the lovely [Flipper gem](https://github.com/jnunemaker/flipper) to manage features.

It is protected with a basic auth. Add the following to your credentials:
```
$ EDITOR="code --wait" rails credentials:edit

# In the file
flipper:
  user_name: YOUR_USERNAME
  password: YOUR_PASSWORD
```

Then navigate to http://localhost:3000/flipper/features & enter your credentials.

Add the feature `show_auth` and enable it for everyone. This should show the login/signup links on the index of the app.

## 🔑 Admin Dashboard
This app uses the [ActiveAdmin](https://github.com/activeadmin/activeadmin) gem to generate an admin UI.

This is already up and running as part of your app! You just need to create an admin user to access it.

Signup on your app and try navigate to http://localhost:3000/admin - you should be unable to access it yet.

You need to set the boolean column `admin` on your user account to `true`.

This is pretty fast to do from the rails console:
```
$ rails c
> User.find_by(email: 'YOUR_ACCOUNTS_EMAIL').update(admin: true)
```

Now navigate to http://localhost:3000/admin and you should see the blank admin UI.

You will need to [read the docs](https://activeadmin.info/documentation.html) to find out how to extend this for your own purposes.

## ✅ Testing
You can start your app, and run your livereloading test suite with one command: `$ guard`

Once guard is running, simply push `return` to run all tests & static checks.
For more info check the Guard related gems in the `Gemfile`.

To run the test suite on its own: `$ rspec`

For more info check the RSpec related gems in the `Gemfile`.

## 🔧 Code Coverage
Code coverage is setup with simplecov.

Run your test suite: `$ rspec`

In your apps directory open `./coverage/index.html` in a browser to view a UI for the code coverage of your app.

If you start the app with the `$ guard` command the code coverage will update coverage on each saved change.

## 🚨 Static Analysis
There are multiple gems integrated in this app for static analysis.

These all run as part of the `$ guard` command during development.

Rubocop: ruby style guide, [read more here](https://github.com/rubocop-hq/rubocop). To use run: `$ rubocop`.

Brakeman: security analysis, [read more here](https://github.com/presidentbeef/brakeman). To use run: `$ brakeman`.

## 🚀 Deployment

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/TristanToye/rails-template)

We are going to deloy this [Heroku](https://www.heroku.com/)

Create an account and create your first app. Add to your app the free tier of [Heroku Postgres](https://www.heroku.com/postgres) & [Papertrail](https://elements.heroku.com/addons/papertrail).

Next install the CLI locally & login: https://devcenter.heroku.com/articles/heroku-cli

Add your `.env` variables to the [settings tab on your Heroku app](https://devcenter.heroku.com/articles/config-vars#using-the-heroku-dashboard).

You will also need to add the contents of your `config/master.key` file to Heroku as `RAILS_MASTER_KEY` in the same setting location to allow Heroku to use your credentials.

Deploy your repo from the `deploy` tab by connecting your github account and selecting the repo OR follow the linked guide below to deloy directly from your machine.

Finally, run the following to setup you database on the Heroku Postgres instance:
```
heroku run rails db:schema:load -a APP_NAME
```

Heroku has a great set of documentation on how to get setup: https://devcenter.heroku.com/articles/getting-started-with-rails5

## 👷 Continuous Integration
This section could be expanded, but out of ther box there are some basic tools in place.

### CircleCi
Use this for CI with Heroku to ensure all your tests pass before deploying a new version, before merging your latest PRs etc.

You get one free linux box to run tests on: https://circleci.com

Connect your github account and select the repo to start running tests.

By default this is configured to push code coverage to CodeClimate (see below).

If you don't want to use CodeClimate comment out lines 94-96 from [.circleci/config.yml](https://github.com/TristanToye/rails-template/blob/master/.circleci/config.yml#L94):
```
      - send-code-coverage:
          requires:
            - build-rails
```

Once setup and you have your tests passing you can enable the option on Heroku to `Wait for CI to pass before deploy` from the `Deploy` tab of you app.

### CodeClimate
Use this for tracking issues, code coverage etc.

Free for open source: https://codeclimate.com/

Sign in with github & connect your repo.

Add this environment variable to CirclCi: `CC_TEST_REPORTER_ID`

I highly recommend installing the browser extension: https://chrome.google.com/webstore/detail/code-climate/phgahogocbnfilkegjdpohgkkjgahjgk

## ✉️ Mailer Setup

### GMail SMTP Free Sending
If you have a gmail account this is a simple solution. You might want to create a new Gmail just for this app.

Add to your credentials the following:
```
$ EDITOR="code --wait" rails credentials:edit

# In the file opened add
email:
  host: smtp.gmail.com
  user_name: YOUR_GMAIL_EMAIL
  password: YOUR_GMAIL_PASSWORD
```

### Mail Service
You will require a real domain that you own to send email from.

Sign up with a provider like https://sparkpost.com for a free plan.

Verify your domain with them.

Select SMTP sending and get their config.

Add to your credentials the following:
```
$ EDITOR="code --wait" rails credentials:edit

# In the file opened add
email:
  host: HOST_DOMAIN
  user_name: PROVIDED_USER_NAME
  password: PROVIDED_PASSWORD
```
