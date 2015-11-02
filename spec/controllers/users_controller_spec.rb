require 'spec_helper'

describe UsersController, type: :controller do
  
  let(:valid_attributes) { { name: Faker::Name.name, email: Faker::Internet.email, password: "twitter" ,password_confirmation: "twitter" } }
  let(:invalid_attributes) { { name: "" } }

  describe "POST create" do
    describe "with valid params" do
      it "creates a new User" do
        expect {
          post :create, {user: valid_attributes}
        }.to change(User, :count).by(1)
      end

      it "assigns a newly created user as @user" do
        post :create, {user: valid_attributes}
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end

      it "redirects to the created user" do
        post :create, {user: valid_attributes}
        expect(response).to redirect_to(User.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved user as @user" do
        allow_any_instance_of(User).to receive(:save).and_return(false)
        post :create, {user: invalid_attributes}
        expect(assigns(:user)).to be_a_new(User)
      end

      it "re-renders the 'new' template" do
        allow_any_instance_of(User).to receive(:save).and_return(false)
        post :create, {user: invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end
  
  
end
