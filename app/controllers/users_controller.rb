class UsersController < ApplicationController
  def create
    u = User.new
    u.email = params[:email]
    u.password = params[:password]
    if u.save!
      render json: u, status: 200
    else
      render status: 400
    end
  end

  def show
  end

  def update
  end
end
