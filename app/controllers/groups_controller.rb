class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.includes(:user).where(user_id: current_user.id)
  end

  def new
    @group = Group.new
  end

  def create
    @group = current_user.groups.new(params_group)
    if @group.save
      flash[:notice] = 'The Categorie was successfully created.'
      redirect_to groups_path
    else
      flash[:alert] = 'The Categorie was not created.'
      redirect_to new_group_path
    end
  end

  def show
    @group = Group.find(params[:id])
    @paid_ups = PaidUp.includes(:author, :groups).where(group_id: @group.id).order(created_at: :desc)
  end

  private

  def params_group
    params.require(:group).permit(:user_id, :id, :name, :icon)
  end
end
