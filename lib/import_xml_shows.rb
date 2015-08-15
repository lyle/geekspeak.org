#!/bin/env ruby

#this file was used to ipmort shows held in our old xml format


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
#   episodepath = "2015/08/08"
#   @episode = Episode.find(episodepath)
#   puts "#{@episode.title}"
people = User.all

@count = 0

    roles = {"host"=>0,"cohost"=>0,"guest"=>0,"support"=>0}
#Dir.glob('../../geekspeak.org/shows/audio/*.64kbps.mp3') do |mp3file|
Dir.glob('../../geekspeak.org-toMigrate/shows/**/info.xml') do |info|
    
    #../../geekspeak.org/shows/audio/2007-01-20.64kbps.mp3
 #   puts info
    f = File.open(info)
    doc = Nokogiri::XML(f)
    f.close
    transform  = Nokogiri::XSLT(File.read('/Users/lyle/Code/geekspeak.org/lib/transform_show.xslt'))
    episodepathArray =  info.split('/')
    episodepath = "#{episodepathArray[4]}/#{episodepathArray[5]}/#{episodepathArray[6]}"
 #   puts episodepath
    airdate = Date.parse("#{episodepathArray[6]}-#{episodepathArray[5]}-#{episodepathArray[4]}")
    #puts info
    #puts "#{airdate.year}/#{airdate.month}/#{airdate.day}"
    #next
    
    episode = Episode.where(:slug => episodepath)
    if (episode.blank?) then
        episode = Episode.new()
        episode.title = doc.xpath('//xmlns:topic').inner_text
        #episode.promo = doc.xpath('//xmlns:promo').inner_text
        episode.airdate = airdate
        episode.status = "live"
        puts info
        #puts "abstract: #{episode.abstract}"
    else
        episode = episode[0]
    end
    abstract = doc.search('abstract')
    abDoc = Nokogiri::XML(abstract.to_xml)
    contentPath = info.sub("info.xml", "content.xml")

    if File.exist?(contentPath) then
        content = Nokogiri::XML(File.read(contentPath))
        episode.content = transform.transform(content).text.gsub(/--pre--/, "<pre>").gsub(/\s*--\/pre--/, "</pre>")
    end
    
    episode.abstract = transform.transform(abDoc).text

    if episode.save then
        puts "success"
    else
        puts "problem: info"
    end
 #   puts doc.xpath('//xmlns:topic').inner_text
 #   puts doc.xpath('//xmlns:abstract/xmlns:para').inner_text
 #    doc.xpath('//xmlns:participant/@username')
    participants = doc.xpath('//xmlns:participant')
    participants.each { |participant|
        firstname = participant.search('firstname').inner_text
        lastname = participant.search('surname').inner_text
        if(firstname == nil or firstname == "" or lastname == nil or lastname == "") then
            puts info
            puts "error"
        end
        role = participant.search('role').inner_text.downcase
        if role == "co-host" then
            role = "cohost"
        end
        if role == "producer" then
            role = "support"
        end
        roles[role] += 1

        if(participant['username'] == nil) then
            login = "#{firstname.downcase}.#{lastname.downcase}"
            #puts info
            #puts "role: #{role} create user #{login}?"
        else
            login = participant['username'].downcase
        end
        user =  User.where(:login => login)
        if user.blank? then
            #puts info
            #puts "Need to create #{role} user: #{login}"
            user = User.new()
            user.login = login
            user.display_name = "#{firstname} #{lastname}"
            user.email = "fake-#{login}@geekspeak.org"
            pw = "fake-#{login}@geekspeak.org#{rand}"
            user.password = pw 
            user.password_confirmation = pw
            user.bio = participant.search('affiliation').inner_text
            #    puts pw
            #for attribute in user.attributes.keys do
            #    puts "#{attribute.humanize} #{user.attributes[attribute].to_s}"
            #end
            #puts "#{user.display_name} -> #{user.bio}"
            user.save
        else
            user = user[0]
        end
        newParticipant = Participant.new()
        newParticipant.episode = episode
        newParticipant.user = user
        newParticipant.role = role
        newParticipant.save

        pw = nil
        user = nil
        login = nil
        role = nil
        firstname = nil
        lastname = nil
#        puts participant
    }
       # @episode = Episode.new
    #    puts "#{@episode.title}"
    #    @count += 1
    #    puts "#{@count} #{@episode.title} #{episodepath}"
    #    @episode_audio = @episode.episode_audios.build(:audio => File.new(mp3file,"r"))
    #    if @episode_audio.save
    #       puts "Yeah #{@episode_audio.audio_file_size} of audio attached to this episode." 
    #    end
    
end

    puts roles