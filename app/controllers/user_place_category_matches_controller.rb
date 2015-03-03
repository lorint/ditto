class UserPlaceCategoryMatchesController < ApplicationController
  before_action :set_user_place_category_match, only: [:show, :edit, :update, :destroy]

  # GET /user_place_category_matches
  # GET /user_place_category_matches.json
  def index
    @user_place_category_matches = UserPlaceCategoryMatch.all
  end

  # GET /user_place_category_matches/1
  # GET /user_place_category_matches/1.json
  def show
  end

  # GET /user_place_category_matches/new
  def new
    @user_place_category_match = UserPlaceCategoryMatch.new
  end

  # GET /user_place_category_matches/1/edit
  def edit
  end

  # POST /user_place_category_matches
  # POST /user_place_category_matches.json
  def create
    @user_place_category_match = UserPlaceCategoryMatch.new(user_place_category_match_params)

    respond_to do |format|
      if @user_place_category_match.save
        format.html { redirect_to @user_place_category_match, notice: 'User place category match was successfully created.' }
        format.json { render :show, status: :created, location: @user_place_category_match }
      else
        format.html { render :new }
        format.json { render json: @user_place_category_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_place_category_matches/1
  # PATCH/PUT /user_place_category_matches/1.json
  def update
    respond_to do |format|
      if @user_place_category_match.update(user_place_category_match_params)
        format.html { redirect_to @user_place_category_match, notice: 'User place category match was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_place_category_match }
      else
        format.html { render :edit }
        format.json { render json: @user_place_category_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_place_category_matches/1
  # DELETE /user_place_category_matches/1.json
  def destroy
    @user_place_category_match.destroy
    respond_to do |format|
      format.html { redirect_to user_place_category_matches_url, notice: 'User place category match was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_place_category_match
      @user_place_category_match = UserPlaceCategoryMatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_place_category_match_params
      params.require(:user_place_category_match).permit(:match_id, :upc_id)
    end
end
