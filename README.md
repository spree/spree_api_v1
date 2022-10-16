# Spree Api V1

Introduction goes here.

## Installation

1. Add this extension to your Gemfile with this line:

    ```ruby
    gem 'spree_api_v1'
    ```

2. Install the gem using Bundler

    ```ruby
    bundle install
    ```

3. Copy & run migrations

    ```ruby
    bundle exec rails g spree_api_v1:install
    ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.


## Contributing

In the spirit of [free software][1], **everyone** is encouraged to help improve this project.

Here are some ways *you* can contribute:

* by using prerelease versions
* by reporting [bugs][2]
* by suggesting new features
* by writing or editing documentation
* by writing specifications
* by writing code (*no patch is too small*: fix typos, add comments, clean up inconsistent whitespace)
* by refactoring code
* by resolving [issues][2]
* by reviewing patches

Starting point:

* Fork the repo
* Clone your repo
* (You will need to `brew install mysql postgres` if you don't already have them installed)
* Run `bundle`
* (You may need to `bundle update` if bundler gets stuck)
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes
* Ensure specs pass by running `bundle exec rspec spec`
* Submit your pull request


License
----------------------

Spree is released under the [New BSD License][3].
