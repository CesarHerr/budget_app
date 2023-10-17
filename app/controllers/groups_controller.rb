class GroupsController < ApplicationController
  before_action :authenticate_user!
  def index
    @groups = Group.includes(:user).where(user_id: current_user.id)
    @sum_totals = {}
    @paid_ups = PaidUp.includes(:author, :groups).where(author_id: current_user.id)
    @sum_total = total(@paid_ups)
  end

  def show
    @group = Group.find(params[:id])
    @paid_ups = PaidUp.includes(:author, :groups).where(group_id: @group.id).order(created_at: :desc)
    @sum_total = total(@paid_ups)
  end

  def new
    @group = Group.new
    @icons = Dir.glob('app/assets/images/icons/*.png').map { |path| File.basename(path) }
  end

  def create
    @group = current_user.groups.new(params_group)
    if @group.save
      flash[:notice] = 'Successfully created.'
      redirect_to groups_path
    else
      flash[:alert] = 'Was not created.'
      redirect_to new_group_path
    end
  end

  def total(paid_ups)
    total = 0
    paid_ups.each do |paid_up|
      total += paid_up.amount
    end
    total
  end

  private

  def params_group
    params.require(:group).permit(:user_id, :id, :name, :icon)
  end
end
