class PaidUpsController < ApplicationController
  def index; end

  def show
    @group = Group.find(params[:group_id])
    @paid_up = PaidUp.find(params[:id])
  end

  def new
    @paid_up = PaidUp.new
    @group = Group.find(params[:group_id])
    @groups = Group.includes(:user).where(user: { id: current_user.id })
  end

  def create
    group_ids = params[:paid_up][:group_ids]

    if group_ids.nil?
      flash[:alert] = 'Something went wrong'
      redirect_to new_group_paid_up_path
    else
      group_ids.each do |group_id|
        paid_up = current_user.paid_ups.new(
          name: params[:paid_up][:name],
          amount: params[:paid_up][:amount],
          group_id:
        )
        paid_up.save
      end

      flash[:notice] = 'Transaction Created!'
      redirect_to group_path(group_ids.first)
    end
  end

  private

  def params_paid_up
    params.require(:paid_up).permit(:author_id, :amount, :name, group_ids: [])
  end
end
