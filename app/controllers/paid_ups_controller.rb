class PaidUpsController < ApplicationController
  def index; end

  def show
    @group = Group.find(params[:group_id])
    @paid_up = PaidUp.find(params[:id])
  end

  def new
    @paid_up = PaidUp.new
    @group = Group.find(params[:group_id])
  end

  def create
    @paid_up = current_user.paid_ups.new(params_paid_up)
    @group = Group.find(params[:group_id])
    if @paid_up.save
      flash[:notice] = 'Transaction successfully created'
      redirect_to group_path(@group)
    else
      flash[:alert] = 'Something went wrong'
      redirect_to new_group_paid_up_path(@group)
    end
  end

  private

  def params_paid_up
    params.require(:paid_up).permit(:author_id, :group_id, :amount, :name)
  end
end
