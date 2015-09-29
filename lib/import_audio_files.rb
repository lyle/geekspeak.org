#!/bin/env ruby

#this file was used to ipmort all of the audio file into the new system.
#


ENV['RAILS_ENV'] = "development" # Set to your desired Rails environment name
require '../config/environment.rb'

# After this point you have access to your models and other classes from your Rails application

#model_instance = EpisodeAudio.find(3)
#model_instance.audio_file_size = 25274411
#model_instance.save

##Dir.foreach('../../geekspeak.org/shows/audio') do |item|
##  next if item == '.' or item == '..'
##  
##  if (item.)
##  puts item
##  # do work on real items
##end

@count = 0

#Dir.glob('../../geekspeak.org/shows/audio/*.64kbps.mp3') do |mp3file|
Dir.glob('/Volumes/Ender/from_gs1_end_of_2011/fiberchannel/www/docroot/geekspeak.org/shows/audio/*.64kbps.mp3') do |mp3file|

    #../../geekspeak.org/shows/audio/2007-01-20.64kbps.mp3
    episodepath =  mp3file.split('/')[10].split('.')[0].gsub(/\-/,"/")
    @episode = Episode.find(episodepath)
    puts "#{episodepath}"

    unless @episode.blank?
        @count += 1
        puts "#{@count} #{@episode.title} #{episodepath}"
        if @episode.episode_audios.count == 0 then
            @episode_audio = @episode.episode_audios.build(:audio => File.new(mp3file,"r"))
            if @episode_audio.save
               puts "Yeah #{@episode_audio.audio_file_size} of audio attached to this episode." 
            end
        else
           #puts "already has"
        end
    end
end
