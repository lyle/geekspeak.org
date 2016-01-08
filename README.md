GeekSpeak is a technology radio show which consits of a group of Geeks covering news of the week, doing interviews, and taking listener questions.

The GeekSpeak.org site - allows the creation of episodes, episodes have participants and bits.
A bit is a title (required), a link, and content.
Bits are ordered to represent when they were covered on the radio show.
Episodes can also have images and, of course, audio files.

## Other code we use
* [in-place-editing](https://github.com/bernat/best_in_place)
* [ActiveAdmin](http://activeadmin.info/) ([Thanks Ryan](http://railscasts.com/episodes/284-active-admin)) - but I have been moving away from AA as custom forms look better and can increase [flow](https://en.wikipedia.org/wiki/Flow_(psychology)).
* Capistrono for deploying (again, [thanks Ryan](http://railscasts.com/episodes/133-capistrano-tasks-revised))
* [Unicorn](http://unicorn.bogomips.org/) ([NginX and Unicorn on Digital Ocean](https://www.digitalocean.com/community/tutorials/how-to-deploy-a-rails-app-with-unicorn-and-nginx-on-ubuntu-14-04))
* [We host GeekSpeak.org on Digital Ocean](https://www.digitalocean.com/?refcode=d93b2b9fa332).
* Checkout our Gemfile for a list of other stuff we are using.

## Changes
To suggest changes or report bugs please create an issue on github.

## Note
This codebase is not really generic enough to run other Podcasts without a bit of work. If you are intersted in doing so please contact me so I can help with the "generification" of the system. - it is on my long term todo list.


## Install Process

brew install postgres

## Ruby
Until now GeekSpeak.org has been using rvm (ruby version manager), but we are switching to rbenv. `brew install rbenv`
1.9.2 ruby can no longer be installed on El Capitan.. so switching to 1.9.3-p551
`rbenv install 1.9.3-p551` - the .ruby-version file specifies this version
`gem install bundler` (relaunch your term)
`bundle install`
'rbenv rehash'

## Data
Create a postgres database with the name geekspeak_org_dev, with owner geekspeak_org - and set up a pw.
Get a backup of the GeekSpeak database (example: "2016-01-02_geekspeak.org_production") and import it into running database:
`psql -h localhost -d geekspeak_org_dev -U geekspeak_org -f 2016-01-02_geekspeak.org_production`
