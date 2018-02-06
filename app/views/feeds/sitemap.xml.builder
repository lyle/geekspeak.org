xml.instruct! :xml, version: "1.0" 
xml.urlset "xmlns" => xmlns="http://www.sitemaps.org/schemas/sitemap/0.9" do
    xml.url do
        xml.loc "https://geekspeak.org/"
        xml.lastmod @episodes.first.updated_at.utc.iso8601
        xml.changefreq "weekly"
        xml.priority 1.0
    end
    xml.url do
        xml.loc "https://geekspeak.org/support"
        xml.priority 0.8
    end
    @episodes.each do |episode|
        xml.url do
            xml.loc episode_url(episode, :protocol => "https" )
            xml.lastmod episode.updated_at.utc.iso8601
        end
    end

end