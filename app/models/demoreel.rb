require_dependency "VideoURLBuilder"
require_dependency "ActiveCheck"

class Demoreel < ActiveRecord::Base
  before_save ActiveCheck.new

  def video_url
    VideoURLBuilder.from(self.video)
  end

  def breakdown_url
    self.breakdown.to_s
  end
end

