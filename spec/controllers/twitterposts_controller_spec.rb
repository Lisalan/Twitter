require 'spec_helper'

describe TwitterpostsController, type: :controller do
  include SessionsHelper
  before (:each) do
    @user = FactoryGirl.create(:user)
    log_in @user
  end
  
  let(:valid_attributes) { { content: "twitterpost", user_id: @user.id } }
  
  describe "DELETE destroy" do
    it "destroys the requested twitterpost" do
      twitterpost = Twitterpost.create! valid_attributes
      expect {
          delete :destroy, {id: twitterpost}
        }.to change(Twitterpost, :count).by(-1)
    end
  end
end
