class GroupsController < ApplicationController
  layout 'layouts/side_menu.html.erb'
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = current_user.groups.new(group_params)
    if @group.save
      redirect_to group_path(@group), notice: 'グループを作成しました'
    else
      render :new
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, group_users)
  end
end
