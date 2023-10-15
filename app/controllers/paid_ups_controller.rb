class PaidUpsController < ApplicationController
  def index; end

  def show
    @group = Group.find(params[:group_id])
    @paid_up = PaidUp.find(params[:id])
  end

  private

  def params_paid_up
    params.require(:paid_up).permit(:author_id, :group_id)
  end
end
