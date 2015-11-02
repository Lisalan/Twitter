# == Schema Information
#
# Table name: relationships
#
#  id          :integer          not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'spec_helper'

describe Relationship do
  context 'associations and validations' do
    it { should validate_presence_of(:follower_id) }
    it { should validate_presence_of(:followed_id) }
    it { should belong_to(:follower) }
    it { should belong_to(:followed) }
  end
end
