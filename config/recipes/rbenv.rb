set_default :ruby_version, File.read('.ruby-version').strip

namespace :rbenv do
  desc "Install make, rbenv, Ruby, and the Bundler gem"
  task :install, roles: :app do
    run "#{sudo} apt-get -y install make rbenv"
    run "rbenv install #{ruby_version}"
    run "rbenv global #{ruby_version}"
    run "gem install bundler --no-ri --no-rdoc"
    run "rbenv rehash"
    run "#{sudo} apt-get -y install g++"
  end
  after "deploy:install", "rbenv:install"
end
