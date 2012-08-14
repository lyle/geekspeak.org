xml.instruct!
xml.rss "version" => "2.0",
        "xmlns:dc" => "http://purl.org/dc/elements/1.1/",
        "xmlns:atom" => "http://www.w3.org/2005/Atom",
        "xmlns:itunes" =>"http://www.itunes.com/dtds/podcast-1.0.dtd" do
    xml.channel do
        xml.title 'GeekSpeak, KUSP'
        xml.itunes(:subtitle, "Bridging the gap between Geeks and the rest of humanity.")
        xml.itunes(:author, "Lyle Troxell")
        xml.link episodes_url
        xml.pubDate CGI.rfc1123_date(@episodes.first.updated_at)
        xml.description h("GeekSpeak is a group of professional geeks who discuss the week's latest news and trends. They help people with such things as Windows, Macintosh, and Linux computing, digital photography, the free software movement, Web 2.0, digital video and audio editing, Adobe software, processor and platform technologies, social networks, solar technology, science, technical politics, passwords, and much more. The Geeks also interview technologists, hackers, developers, entrepreneurs, great thinkers, and people with real information to share. If it's geeky, then it's on GeekSpeak! GeekSpeak is broadcast live every Saturday at 10 a.m. PST on KUSP FM and HD radio, and is available via podcast at NPR.")
        xml.itunes(:summary, "GeekSpeak is a group of professional geeks who discuss the week's latest news and trends. They help people with such things as Windows, Macintosh, and Linux computing, digital photography, the free software movement, Web 2.0, digital video and audio editing, Adobe software, processor and platform technologies, social networks, solar technology, science, technical politics, passwords, and much more. The Geeks also interview technologists, hackers, developers, entrepreneurs, great thinkers, and people with real information to share. If it's geeky, then it's on GeekSpeak! GeekSpeak is broadcast live every Saturday at 10 a.m. PST on KUSP FM and HD radio, and is available via podcast at NPR.")
        xml.language "en-us"
        xml.generator "https://github.com/lyle/geekspeak.org"
        xml.category "Technology"
        xml.itunes(:category, :text=>"Technology")
        xml.itunes(:explicit,"clean")
        xml.itunes(:keywords, "geek, geekspeek, radio, technology")
        
        
        @episodes.each do |episode|
            xml.item do
                xml.title episode.title
                xml.link episode_url(episode)
                xml.description textilize(episode.abstract)
                xml.pubDate episode.airdate.to_s(:rfc822)
                xml.guid episode_url(episode)
                xml.enclosure :url => "http://geekspeak.org/#{episode.episode_audios.first.audio.url}",
                    :length => episode.episode_audios.first.audio_file_size,
                    :type=> episode.episode_audios.first.audio_content_type
            end
        end
    end
end