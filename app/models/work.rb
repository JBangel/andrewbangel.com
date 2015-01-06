require_dependency "VideoURLBuilder"

class Work < ActiveRecord::Base
  def video_url
    VideoURLBuilder.from(self.video)
  end
end
