class YoutubeService
  attr_reader :channel_id, :videos_limit,:yt_channel_id

  def initialize(params)
    @channel_id = params[:channel_id]
    @yt_channel_id = Channel.find_by(id: @channel_id).channel_id
    @videos_limit = params[:limit]
  end

  def channel_videos
    channel.videos.limit(videos_limit)
  end

  def create_video(video_detail)
    Video.find_or_create_by!(video_detail)
  end


  def fetch_and_create_videos
    channel_videos.each do |video|
      video_object = video_details(video)
      create_video(video_object)
    end
  end

  def video_details(video)
    {
        title: video.title,
        video_id: video.id,
        description: video.description,
        published_at: video.published_at,
        thumbnail_url: video.thumbnail_url,
        duration: video.length,
        channel_id: channel_id

    }
  end

  private
  def channel
    Yt::Channel.new id: yt_channel_id
  end

  def video(id)
    Yt::Video.new(id: id)
  end


end