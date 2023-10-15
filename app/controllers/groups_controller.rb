class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.includes(:user).where(user_id: current_user.id)
  end

  def show
    @group = Group.find(params[:id])
    @paid_ups = PaidUp.includes(:author, :groups).where(group_id: @group.id)
  end

  def params_group
    params.require(:group).permit(:user_id, :id)
  end
end
