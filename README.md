GeekSpeak is a technology radio show which consits of a group of Geeks covering news of the week, doing interviews, and taking listener questions.

The new GeekSpeak.org site - allows the creation of episodes, episodes have participants and bits.
A bit is a title (required), a link, and content.
Bits are ordered to represent when they were covered on the radio show.

I am currently working moving to test-driven development and am using factory girl ...To run testing with gaurd in it's own terminal (using the correct rvm)
 'bundle exec guard'


Curently this is mostly an Active Admin beast with some additions. 

On the list of todo items:

* Done: Allow for linking existing bits to a episode instead of having to create new bits every time on the episode page.
* In general I need to move away from Active Admin so that the whole site works better.
* Done: Will be working on "in-place-editing":https://github.com/bernat/best_in_place
* Note Audio upload - NPR needs 64Kbps, 44100 Hz, Mono (11.0:1)
* Add beeter navigation for logging in.
* Fix responsive design - target iPhone and iPad + others
* Filter out older non-used geek bits (hide older then a month by default?)


## Chef for Deploy

On an Ubuntu 10.04 x64 server as root run:

``` bash
  wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/10.04/x86_64/chef-server_11.0.8-1.ubuntu.10.04_amd64.deb
  dpkg -i chef-server_11.0.8-1.ubuntu.10.04_amd64.deb
  chef-server-ctl reconfigure
```

