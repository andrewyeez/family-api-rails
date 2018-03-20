class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def create
    @user = User.create(user_params)
    render json: @user, status: 201
  end

  def show
    @user = User.find(params(:id))
    render json: @user, status: 302
  end

  def update
    @user = User.find(params(:id))
    render json: @user, status: 200 if @user.update_attributes(user_params)
  end

  private

  def render_404
    render json: {status: 404, message: 'failed'}
  end

  def user_params
    params.permit(:email, :password)
  end
end
