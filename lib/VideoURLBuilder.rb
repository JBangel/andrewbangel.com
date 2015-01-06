class VideoURLBuilder
  def self.from(video_identifier)
    vtype, identity = identify(video_identifier)

    response = case vtype.to_sym
    when :url
      video_identifer
    when :vimeo
      build_vimeo identity
    end
  end

  def self.build_vimeo(identity)
    "<iframe src=\"//player.vimeo.com/video/#{identity}?title=0&amp;byline=0&amp;portrait=0\" width=\"500\" height=\"281\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"
  end

  def self.identify(video_identifier)
    if video_identifier.include? ":" then
      video_identifier.split(':')
    else
      [:url, video_identifier]
    end
  end
end

