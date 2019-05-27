# README

This is contact form for internal usage.

# Setup and dependencies

Clone the project and run:

```
gem install bundler
bundle install
bundle exec rails db:create:all db:migrate db:seed
```

# Testing

This project uses `minitest` and/or `rspec`

### minitest
```
rake test # unit tests
rake test:system # system tests
```

### rspec
```
rspec
```
