require 'rails_helper'

RSpec.describe MailsController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET send" do
    it "returns http success" do
      get :send
      expect(response).to have_http_status(:success)
    end
  end

end
