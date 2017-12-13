# == Schema Information
#
# Table name: videos
#
#  id            :integer          not null, primary key
#  video_id      :string
#  title         :string
#  description   :text
#  published_at  :datetime
#  thumbnail_url :string
#  duration      :time
#  channel_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Video < ApplicationRecord
  belongs_to :channel
end
