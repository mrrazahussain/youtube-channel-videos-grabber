class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def fetch_videos
    channel= Channel.find_by(id: params[:channel_id])
    YoutubeService.new(channel_id: channel.id, limit: Setting.first.videos_limit).fetch_and_create_videos
    respond_to do |format|
      format.html {
        #flash[:notice]= "Successfully fetched videos for #{channel.name}"
        redirect_back(fallback_location: videos_path,notice: "Successfully fetched videos for #{channel.name}")
        #redirect_to :back, notice: "Successfully fetched videos for #{channel.name}"
        }
    end
  end
end
