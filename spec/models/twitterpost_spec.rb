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
  pending "add some examples to (or delete) #{__FILE__}"
end
