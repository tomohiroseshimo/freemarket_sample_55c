require 'rails_helper'

describe ItemsController do
  describe "GET #show" do
    it "renders the :show template" do
      get :show, params: {  id: 1 }
    end
    it 'リクエスト200でokになるか' do
      expect(response).to have_http_status(:ok)
    end
  end
end