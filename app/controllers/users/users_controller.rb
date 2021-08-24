class Users::UsersController < ApplicationController
  layout 'users/layouts/application.html.erb'
  def index
  end

  def show
    @user = User.find(params[:id])
  end
end
