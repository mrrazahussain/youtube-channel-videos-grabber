# == Schema Information
#
# Table name: channels
#
#  id          :integer          not null, primary key
#  name        :string
#  channel_id  :string
#  active      :boolean          default(TRUE)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Channel < ApplicationRecord
  belongs_to :category
  has_many :videos, dependent: :destroy
  scope :active, ->{ where active: true}
  validates :name,:channel_id, presence: true
  after_create :set_channel_details


  def set_channel_details
    channel_id= self.channel_id
    channel = Yt::Channel.new id: channel_id
    self.thumbnail_url= channel.thumbnail_url
    self.description = channel.description
    self.save!
  end


end
