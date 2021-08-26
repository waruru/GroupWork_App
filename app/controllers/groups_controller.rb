class GroupsController < ApplicationController
  layout 'layouts/side_menu.html.erb'
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
    @users = @group.users
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = current_user.groups.new(group_params)
    if current_user.save
      set_owner
      redirect_to group_path(@group), notice: 'グループを作成しました'
    else
      render :new
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end

  def set_owner
    GroupUser.where(user: current_user, group: @group).update(is_owner: true)
  end
end
