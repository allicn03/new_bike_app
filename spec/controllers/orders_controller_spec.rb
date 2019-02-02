require 'rails_helper'

describe OrdersController, type: :controller do
  let(:product) { Product.create!(name:"Book", description: "this is a description", image_url: "an_image.jpg")}

  before do
    @user = FactoryBot.create(:user)
  end

  context 'when a user is logged in' do
    before do
      sign_in @user
    end

    it "is a valid order" do
      post :create, params: { product_id: product.id, order: { user: @user, product: product, total: 1 }}
      expect(response).to have_http_status(204)
    end
  end
end
