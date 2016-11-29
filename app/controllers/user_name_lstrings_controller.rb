class UserNameLstringsController < ApplicationController
  before_action :set_user_name_lstring, only: [:show, :edit, :update, :destroy]

  # GET /user_name_lstrings
  # GET /user_name_lstrings.json
  def index
    @user_name_lstrings = UserNameLstring.all
  end

  # GET /user_name_lstrings/1
  # GET /user_name_lstrings/1.json
  def show
  end

  # GET /user_name_lstrings/new
  def new
    @user_name_lstring = UserNameLstring.new
  end

  # GET /user_name_lstrings/1/edit
  def edit
  end

  # POST /user_name_lstrings
  # POST /user_name_lstrings.json
  def create
    @user_name_lstring = UserNameLstring.new(user_name_lstring_params)

    respond_to do |format|
      if @user_name_lstring.save
        format.html { redirect_to @user_name_lstring, notice: 'User name lstring was successfully created.' }
        format.json { render :show, status: :created, location: @user_name_lstring }
      else
        format.html { render :new }
        format.json { render json: @user_name_lstring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_name_lstrings/1
  # PATCH/PUT /user_name_lstrings/1.json
  def update
    respond_to do |format|
      if @user_name_lstring.update(user_name_lstring_params)
        format.html { redirect_to @user_name_lstring, notice: 'User name lstring was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_name_lstring }
      else
        format.html { render :edit }
        format.json { render json: @user_name_lstring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_name_lstrings/1
  # DELETE /user_name_lstrings/1.json
  def destroy
    @user_name_lstring.destroy
    respond_to do |format|
      format.html { redirect_to user_name_lstrings_url, notice: 'User name lstring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_name_lstring
      @user_name_lstring = UserNameLstring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_name_lstring_params
      params.require(:user_name_lstring).permit(:body, :idea_id)
    end
end
