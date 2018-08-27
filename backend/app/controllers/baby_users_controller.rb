class BabyUsersController < ApplicationController
  before_action :set_baby_user, only: [:show, :update, :destroy]

  # GET /baby_users
  def index
    @baby_users = BabyUser.all

    render json: @baby_users
  end

  # GET /baby_users/1
  def show
    render json: @baby_user
  end

  # POST /baby_users
  def create
    @baby_user = BabyUser.new(baby_user_params)

    if @baby_user.save
      render json: @baby_user, status: :created, location: @baby_user
    else
      render json: @baby_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /baby_users/1
  def update
    if @baby_user.update(baby_user_params)
      render json: @baby_user
    else
      render json: @baby_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /baby_users/1
  def destroy
    @baby_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_baby_user
      @baby_user = BabyUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def baby_user_params
      params.require(:baby_user).permit(:baby_id, :user_id, :role, :active)
    end
end
