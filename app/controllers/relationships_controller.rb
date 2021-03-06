class RelationshipsController < ApplicationController
  before_action :set_user

  def create
    user = User.find(params[:relationship][:follow_id])
    following = current_user.follow(user)
    if following.save
      redirect_to user
    else
      redirect_to uesr
    end
  end

  def destroy
    user = User.find(params[:relationship][:follow_id])
    following = current_user.unfollow(user)
    if following.destroy
      redirect_to user
    else
      redirect_to uer
    end
  end

  private

  def set_uer
    user = User.find(params[:relationship][:follow_id])
  end

end
