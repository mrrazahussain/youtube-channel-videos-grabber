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

require 'test_helper'

class ChannelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
