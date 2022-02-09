class RfcGeneratorController < ApplicationController
  def create
    @user = User.find_or_create_by(user_params)
    if @user.save
      render :show, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
    @user.add_one
  end

  private

  def user_params
    params.permit(:name, :last_name, :second_last_name, :birthdate)
  end
end
