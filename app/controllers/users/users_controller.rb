class Users::UsersController < ApplicationController
  layout 'layouts/side_menu.html.erb'
  def index
  end

  def show
    @user = User.find(params[:id])
  end
end
