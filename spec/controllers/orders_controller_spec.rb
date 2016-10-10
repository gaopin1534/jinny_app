require 'rails_helper'

RSpec.describe OrdersController, type: :controller do

  describe "GET #exclusive" do
    it "returns http success" do
      get :exclusive
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #normal" do
    it "returns http success" do
      get :normal
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response).to have_http_status(:success)
    end
  end

end
