class YoutubeService
  attr_reader :channel_id, :videos_limit

  def initialize(params)
    @channel_id = params[:channel_id]
    @videos_limit = params[:limit]
  end

  def channel_videos
    channel.videos.limit(videos_limit)
  end

  def create_video

  end


  def print_videos
    puts "PRINT VIDOES METHOD CALLED"
    channel_videos.each do |video|
      puts video_details(video).inspect
    end
  end

  def video_details(video)
    {
        title: video.title,
        vidoe_id: video.id,
        description: video.description,
        published_at: video.published_at,
        thumbnail_url: video.thumbnail_url,
        duration: video.length
    }
  end

  private
  def channel
    Yt::Channel.new id: channel_id
  end

  def video(id)
    Yt::Video.new(id: id)
  end


end