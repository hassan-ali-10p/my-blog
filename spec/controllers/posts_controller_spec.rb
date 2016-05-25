require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "Get #new" do
    it "should return a new non-persisted Post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end
  end

  describe "Post #create" do

    context "valid post" do
      let(:valid_post_attributes) { FactoryGirl.attributes_for(:post) }

      it "should create a new Post" do
        post :create, post: valid_post_attributes
        expect(Post.count).to eq(1)
      end

      it "should redirect to detail post page" do
        post :create, post: valid_post_attributes
        expect(subject).to redirect_to action: :show, id: assigns(:post).id
      end
    end

    context "inValid post" do
    end

  end

  describe "Get #show" do
    let(:post) { FactoryGirl.create(:post) }

    it "should show 'post detail page' of already created post" do
      get :show, id: post.id
      expect(assigns(:post)).to eq(post)
    end
  end
end
