require "bundler/capistrano"

load "config/recipes/base"
load "config/recipes/nginx"
load "config/recipes/unicorn"
load "config/recipes/postgresql"
load "config/recipes/nodejs"
load "config/recipes/rbenv"
load "config/recipes/check"

#server "gs-b.geekspeak.org", :web, :app, :db, primary: true
server "play.benlomond.org", :web, :app, :db, primary: true

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


namespace :deploy do
     namespace :assets do
       task :precompile, :roles => :web, :except => { :no_release => true } do
        begin
          from = source.next_revision(current_revision)
        rescue
          err_no = true
        end
        if err_no || capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ app/assets/ | wc -l").to_i > 0
         run %Q{cd #{latest_release} && #{rake} RAILS_ENV=#{rails_env} #{asset_env} assets:precompile}
        else
         logger.info "Skipping asset pre-compilation because there were no asset changes"
        end
     end
     
   end
     task :link_upload_folders do
         run "mkdir -p #{release_path}/public/shows"
         run "ln -nfs #{shared_path}/shows/audio #{release_path}/public/shows/audio"
         run "ln -nfs #{shared_path}/episodes #{release_path}/public/episodes"
     end
 end




after "deploy","deploy:link_upload_folders"
after "deploy", "deploy:cleanup" # keep only the last 5 releases