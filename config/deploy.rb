# config valid only for Capistrano 3.1
lock '3.2.1'

set :user, 'root'

set :application, 'www.example.com'
set :repo_url, 'git@github.com:example/example.git'
set :scm, :git
set :use_sudo, false
set :deploy_to, "/var/www/www.example.com"

after 'deploy:publishing', 'deploy:restart'
after 'deploy:publishing', 'deploy:cleanup'

namespace :deploy do
  task :restart do
    on roles(:all) do |host|
      execute "cd #{current_path} && composer install --no-dev -o --prefer-dist"
    end
  end
end
