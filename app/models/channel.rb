# == Schema Information
#
# Table name: channels
#
#  id          :integer          not null, primary key
#  name        :string
#  channel_id  :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Channel < ApplicationRecord
  belongs_to :category
  has_many :videos, dependent: :destroy
  validates :name,:channel_id, presence: true
end
