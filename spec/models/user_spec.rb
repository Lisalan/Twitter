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

require 'spec_helper'

describe User do
	 
	context 'associations and validations' do
		it { should have_many(:twitterposts) }
		it { should have_many(:active_relationships) }
		it { should have_many(:passive_relationships) }
		it { should have_many(:following) }
		it { should have_many(:followers) }
		it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    it { should validate_presence_of(:password_confirmation) }
    it { should validate_presence_of(:name) }
	end
  
  context 'self.search' do
  	let(:user) { create(:user, name: 'twitter') }
  	
  	it 'returns all users when no query is present' do
      User.all.each do |user|
      	User.search('').should include user
      end
    end

    it 'returns users matching given name' do
    	User.search('twitter').should include user
    end
  end

end
