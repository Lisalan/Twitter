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

FactoryGirl.define do
  factory :twitterpost do
    content "twitterpost"
    user
  end
end
