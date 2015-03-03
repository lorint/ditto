class UserPlacesController < ApplicationController
  before_action :set_user_place, only: [:show, :edit, :update, :destroy]

  # GET /user_places
  # GET /user_places.json
  def index
    @user_places = UserPlace.all
  end

  # GET /user_places/1
  # GET /user_places/1.json
  def show
  end

  # GET /user_places/new
  def new
    @user_place = UserPlace.new
  end

  # GET /user_places/1/edit
  def edit
  end

  # POST /user_places
  # POST /user_places.json
  def create
    @user_place = UserPlace.new(user_place_params)

    respond_to do |format|
      if @user_place.save
        format.html { redirect_to @user_place, notice: 'User place was successfully created.' }
        format.json { render :show, status: :created, location: @user_place }
      else
        format.html { render :new }
        format.json { render json: @user_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_places/1
  # PATCH/PUT /user_places/1.json
  def update
    respond_to do |format|
      if @user_place.update(user_place_params)
        format.html { redirect_to @user_place, notice: 'User place was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_place }
      else
        format.html { render :edit }
        format.json { render json: @user_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_places/1
  # DELETE /user_places/1.json
  def destroy
    @user_place.destroy
    respond_to do |format|
      format.html { redirect_to user_places_url, notice: 'User place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_place
      @user_place = UserPlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_place_params
      params.require(:user_place).permit(:user_id, :place_id, :desc, :rating)
    end
end
