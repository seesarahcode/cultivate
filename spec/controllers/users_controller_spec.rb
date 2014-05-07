require 'spec_helper'


describe UsersController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end


  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      expect(response.status).to eq(200)
    end

    it "should display a signup message" do
      expect(response.body).to match //
    end
  end

end
