class UserPlaceCategoriesController < ApplicationController
  before_action :set_user_place_category, only: [:show, :edit, :update, :destroy]

  # GET /user_place_categories
  # GET /user_place_categories.json
  def index
    @user_place_categories = UserPlaceCategory.all
  end

  # GET /user_place_categories/1
  # GET /user_place_categories/1.json
  def show
  end

  # GET /user_place_categories/new
  def new
    @user_place_category = UserPlaceCategory.new
  end

  # GET /user_place_categories/1/edit
  def edit
  end

  # POST /user_place_categories
  # POST /user_place_categories.json
  def create
    @user_place_category = UserPlaceCategory.new(user_place_category_params)

    respond_to do |format|
      if @user_place_category.save
        format.html { redirect_to @user_place_category, notice: 'User place category was successfully created.' }
        format.json { render :show, status: :created, location: @user_place_category }
      else
        format.html { render :new }
        format.json { render json: @user_place_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_place_categories/1
  # PATCH/PUT /user_place_categories/1.json
  def update
    respond_to do |format|
      if @user_place_category.update(user_place_category_params)
        format.html { redirect_to @user_place_category, notice: 'User place category was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_place_category }
      else
        format.html { render :edit }
        format.json { render json: @user_place_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_place_categories/1
  # DELETE /user_place_categories/1.json
  def destroy
    @user_place_category.destroy
    respond_to do |format|
      format.html { redirect_to user_place_categories_url, notice: 'User place category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_place_category
      @user_place_category = UserPlaceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_place_category_params
      params.require(:user_place_category).permit(:userplace_id, :placecat_id)
    end
end
