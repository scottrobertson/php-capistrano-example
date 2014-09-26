Simple PHP Deployment with Capistrano
===

# Setup
 - Run `bundle install`
 - Set `application`, `repo_url`, and `deploy_to` in `./config/deploy.rb`
 - Set url's in `./config/deploy/staging.rb` and `./config/deploy/production.rb`

# Deployment
 - Run `cap staging deploy`
