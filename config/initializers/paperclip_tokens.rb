Paperclip.interpolates :showdate_as_url do |attachment, style|
    attachment.instance.showdate_as_url
end

Paperclip.interpolates :episode_showdate_as_url do |attachment, style|
    attachment.instance.episode.showdate_as_url
end