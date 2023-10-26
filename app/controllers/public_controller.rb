class PublicController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result.order(:created_at)
  end
end
