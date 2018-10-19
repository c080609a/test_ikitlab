class HomesController < ApplicationController
  def index
    @users = if params[:search]
               User.search params[:search], per_page: 10
             else
               User.order(:name).page params[:page]
             end
  end
end
