xml.instruct! :xml, version: "1.0" 
xml.rss "version" => "2.0",
        "xmlns:dc" => "http://purl.org/dc/elements/1.1/",
        "xmlns:atom" => "http://www.w3.org/2005/Atom",
        "xmlns:itunes" =>"http://www.itunes.com/dtds/podcast-1.0.dtd" do
    xml.channel do
        xml.title 'GeekSpeak'
        xml.itunes(:subtitle, "Bridging the gap between Geeks and the rest of humanity.")
        xml.itunes(:author, "Lyle Troxell")
        xml.itunes(:owner) do
            xml.itunes(:name, "Lyle Troxell")
            xml.itunes(:email, "lyle@geekspeak.org")
        end
        xml.link episodes_url
        xml.atom(:link, :href=>"http://geekspeak.org/shows/npr-feed.xml", :rel=> "self", :type=>"application/rss+xml")
           # atom:link href="http://dallas.example.com/rss.xml" rel="self" type="application/rss+xml" />
        xml.pubDate CGI.rfc1123_date(@episodes.first.updated_at)
        xml.description "GeekSpeak is a group of professional geeks who discuss the week's latest news and trends. They help people with such things as Windows, Macintosh, and Linux computing, digital photography, the free software movement, Web 2.0, digital video and audio editing, Adobe software, processor and platform technologies, social networks, solar technology, science, technical politics, passwords, and much more. The Geeks also interview technologists, hackers, developers, entrepreneurs, great thinkers, and people with real information to share. If it's geeky, then it's on GeekSpeak! GeekSpeak is broadcast live every Saturday at 10 a.m. PST on KUSP FM and HD radio, and is available via podcast at NPR."
        xml.itunes(:summary, "GeekSpeak is a group of professional geeks who discuss the week's latest news and trends. They help people with such things as Windows, Macintosh, and Linux computing, digital photography, the free software movement, Web 2.0, digital video and audio editing, Adobe software, processor and platform technologies, social networks, solar technology, science, technical politics, passwords, and much more. The Geeks also interview technologists, hackers, developers, entrepreneurs, great thinkers, and people with real information to share. If it's geeky, then it's on GeekSpeak! GeekSpeak is broadcast live every Saturday at 10 a.m. PST on KUSP FM and HD radio, and is available via podcast at NPR.")
        xml.language "en-us"
        xml.generator "https://github.com/lyle/geekspeak.org"
        xml.category "Technology"
        xml.itunes(:category, :text=>"Technology")
        xml.itunes(:explicit,"clean")
        xml.itunes(:keywords, "geek, geekspeek, radio, technology")
        xml.itunes(:image, :href=> "http://geekspeak.org/images/GeekSpeak_Logo09022012.png")
        xml.image do
          xml.url "http://geekspeak.org/images/GeekSpeak_Logo_400x400_09022012.png"
          xml.title "GeekSpeak"
          xml.link episodes_url
        end
        
        
        @episodes.each do |episode|
            xml.item do
                xml.title episode.title + " " + episode.showdate_as_url
                xml.link episode_url(episode)
                # this produces lovely HTML transformation - but NPR uses it for the itunes summary - and it isn't legal that way
                # xml.description textilize(episode.abstract)
                xml.description to_text( :html => textilize(episode.abstract))
                xml.pubDate episode.airdate_to_s_rfc822
                if (episode.airdate < Date.parse("2012-07-29")) then
                    xml.guid "http://geekspeak.org/shows/#{episode.showdate_as_url}/"
                else
                    xml.guid "#{episodes_url}#{episode.showdate_as_url}/"
                end
                xml.itunes(:subtitle, episode.on_air_participants.collect{|p| p.user.display_name}.to_sentence)
                #xml.itunes(:summary, strip_tags(textilize(episode.abstract) ).strip   )
                xml.itunes(:summary, to_text( :html => textilize(episode.abstract) ))
                xml.itunes(:explicit, "No")
                xml.itunes(:author, episode.hosts.collect{|p| p.user.display_name}.to_sentence)
                xml.itunes(:duration, episode.episode_audios.first.duration_in_hms)
                
                xml.itunes(:image, :href=> "http://geekspeak.org#{episode.teaser.url}") if episode.teaser.file?
                
                xml.enclosure :url => "http://geekspeak.org#{episode.episode_audios.first.audio.url}",
                    :length => episode.episode_audios.first.audio_file_size,
                    :type=> episode.episode_audios.first.audio_content_type
            end
        end
    end
end