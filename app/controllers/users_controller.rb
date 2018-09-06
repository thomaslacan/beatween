class UsersController < ApplicationController
  before_action :set_user, only: [ :show ]

  def index
    @users = policy_scope(User).order(created_at: :desc)
  end

  def show
    authorize @user
    @colabs = current_user.colabs.where.not(user_id: current_user)
    @colabs = @colabs.uniq
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
