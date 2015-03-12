require 'rails_helper'

describe UsersController do
  before(:each) do
      @user = User.create(name: "Example User", email: "nil")
      get :index
  end

#########################################
################## GET ##################
#########################################

  describe "GET #index " do
    it "renders the index template" do
      expect(response).to render_template(:index)
    end 

    it "response should be 'very nice, great success'" do
      expect(response).to have_http_status(200) 
    end

    # it "assigns @items to include items" do
    #   expect(assigns(:users)).to include(User.new, User.new)
    # end
  end


  describe "GET #show" do
    before(:each) do
      @user = User.create(name: "Example User", email: "nil")
      get :show, id: @user.id
    end

    it "renders the show template" do
      expect(response).to render_template(:show)
    end
    it "assigns a user to @user" do
      expect(assigns(:user)).to eq(@user)
    end
  end


  describe "GET #new" do
    before(:each) do
      get :new
    end

    it "renders the new template with status 200 " do 
      expect(response).to render_template :new
      expect(response).to have_http_status(200)
    end

    it "makes a new User" do
      expect(assigns(:user)).to be_a(User)
    end 

    it "is not persisted" do
      expect{User.new}.to change(User, :count).by(0)
    end 

  end

#########################################
################## CRUD #################
#########################################

  describe "POST #create" do
    it "persists an item to the DB" 
  end

  describe "GET #edit" do
    it "renders the edit template with status 200" 
    it "should assign the item to @item" 
  end

  describe "PUT/PATCH #update" do
    describe "with successful update" do
      it "should update the item record in the database" 
      it "redirect to the show path for this item" 
    end

    describe "with unsuccessful update" do
       before do
        put :update, id: @user_item.id, user: invalid_update_attributes
      end
      describe "should not update the item record in the database" do
        it "if the item qty to 0" 
        it "if the item name is nil" 
        it "should redirect to the edit view template"
    end
  end
end

#########################################
################## DELETE ###############
#########################################

  describe "DELETE #destroy" do
    it "deletes an item from the DB"

    it "redirects to index page" do
      expect(response).to render_template :index
    end
  end


end