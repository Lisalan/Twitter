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

FactoryGirl.define do
  factory :relationship do	
  	follower_id   { Faker::Number.digit }
  	followed_id   { Faker::Number.digit }
  	follower
  	followed
  end 
end

