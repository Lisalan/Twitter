# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

FactoryGirl.define do
  factory :user do	
  	name       { Faker::Name.name }
  	email      { Faker::Internet.email }
    password              "twitter"
    password_confirmation "twitter"
  end 
end
