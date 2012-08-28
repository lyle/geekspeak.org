require "bundler/capistrano"

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/postgresql"
load "config/recipes/nodejs"
load "config/recipes/rbenv"
load "config/recipes/check"

server "gs-b.geekspeak.org", :web, :app, :db, primary: true

set :user, "deployer"
set :application, "geekspeak.org"
set :deploy_to, "/home/#{user}/apps/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:lyle/#{application}.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

task :link_upload_folders do
    run "ln -nfs #{shared_path}/shows/audio #{release_path}/public/shows/audio"
    run "ln -nfs #{shared_path}/episodes #{release_path}/public/episodes"
end


after "deploy:symlink","deploy:link_upload_folders"
after "deploy", "deploy:cleanup" # keep only the last 5 releases