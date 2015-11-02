# == Schema Information
#
# Table name: twitterposts
#
#  id         :integer          not null, primary key
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Twitterpost do
  context 'associations and validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:content) }
    it { should belong_to(:user) }
  end
end
