namespace :youtube do
  desc "Fetch Videos from Active Channel and stored in database"
  task :fetch_videos => :environment do
    puts "------------ Youtube Vidoe Fetach task ----------------------"
    Channel.active.each  do |channel|
      puts" Fetching videos from ******* #{channel.name} *********** Channel"
      service = YoutubeService.new({channel_id: channel.id,limit: 2})
      service.fetch_and_create_videos
      puts '-----------------------------------------------------------------'
      puts '-----------------------------------------------------------------'
      puts '-----------------------------------------------------------------'
    end
  end
end