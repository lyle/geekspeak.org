# Load DSL and set up stages
require "capistrano/setup"

# Include default deployment tasks
require "capistrano/deploy"

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# require 'capistrano/rvm'
# require 'capistrano/chruby'
require "capistrano/rails"
require "capistrano/bundler"
require "capistrano/rbenv"
require "capistrano/rbenv_install"
require "capistrano/nginx"
#Ran on machine: sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
#Ran on machine: sudo apt-get install nodejs

require "capistrano/scm/git"
install_plugin Capistrano::SCM::Git

require "capistrano/puma"
install_plugin Capistrano::Puma
# require 'capistrano/rails/assets'
# require 'capistrano/rails/migrations'
# require 'capistrano/passenger'
# install_plugin Capistrano::Puma::Daemon
install_plugin Capistrano::Puma::Systemd
# Load custom tasks from `lib/capistrano/tasks` if you have any defined
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
