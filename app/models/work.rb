require_dependency "VideoURLBuilder"
require_dependency "markdown_handler"

class Work < ActiveRecord::Base
  def video_url
    VideoURLBuilder.from(self.video)
  end
end
