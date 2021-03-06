require 'rails_helper'

RSpec.describe InquiryController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #confirm" do
    it "returns http success" do
      get :confirm
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #thanks" do
    it "returns http success" do
      get :thanks
      expect(response).to have_http_status(:success)
    end
  end

end
