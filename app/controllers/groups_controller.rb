class GroupsController < ApplicationController
  layout 'layouts/side_menu.html.erb'
  def index
    @groups = Group.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
