class FamiliesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  def create
    @family = Family.create(family_params)
    render json: @family, status: 201
  end

  def show
    @family = Family.find(params[:id])
    render json: @family, status: 302
  end

  def update
    @family = Family.find(params[:id])
    render json: @family, status: 200 if @family.update_attributes(family_params)
  end

  private

  def render_404
    render json: {status: 404, message: 'failed'}
  end

  def family_params
    params.permit(:name)
  end
end
