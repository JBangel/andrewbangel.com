require_dependency "VideoURLBuilder"
require_dependency "ActiveCheck"

class Demoreel < ActiveRecord::Base
  before_save ActiveCheck.new

  def video_url
    VideoURLBuilder.from(self.video)
  end

  def resume_url
    "<a href=\"#\">RESUMÉ</a>"
  end

  def breakdown_url
    "<a href=\"#\">BREAKDOWN</a>"
  end

  def alpha
    "ABC"
  end
end

