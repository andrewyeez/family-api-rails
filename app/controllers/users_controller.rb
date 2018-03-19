class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def create
    u = User.new
    u.email = params[:email]
    u.password = params[:password]
    if u.save!
      render json: u, status: 200
    end
  end

  def show
    if User.find(params[:id])
      render json: User.find(params[:id]), status: 200
    end
  end

  def update
    u = User.find(params[:id])
    if u && params[:email]
      u.email = params[:email]
      u.save!
      render json: User.find(params[:id]), status: 200
    else
      render json: {status: 400, message: 'email missing'}
    end
  end

  private

  def render_404
    render json: {status: 404, message: 'failed'}
  end
end
