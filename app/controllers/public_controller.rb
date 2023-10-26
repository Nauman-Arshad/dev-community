class PublicController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(:created_at)
  end

  def show
    @user = User.find(params[:id])
  end
end
