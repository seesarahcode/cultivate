require 'spec_helper'


describe UsersController do

 let(:valid_attributes) { { email: "hpotter@hogwarts.edu",
                            password: "testing",
                            password_confirmation: "testing"
                        } }

  let(:valid_session) { {} }

  before do
    user = User.create!(valid_attributes)
    sign_in user
  end

  describe "GET new" do
    it "assigns a new user as user" do
      get :new, {}, valid_session
      assigns(:user).should be_a_new(User)
    end
  end

  describe "POST create" do

    describe "with invalid params" do
      it "assigns a newly created but unsaved user as user" do
        # Trigger the behavior that occurs when invalid params are submitted
        User.any_instance.stub(:save).and_return(false)
        post :create, {:user => { "email" => "invalid value" }}, valid_session
        assigns(:user).should be_a_new(User)
      end
    end
  end

end
