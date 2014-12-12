class RelationshipsController < ApplicationController

  def create
    user = User.find(params[:followed_id])
    current_user = User.find(params[:follower_id])
    current_user.follow(user)
    redirect_to current_user
  end

  def destroy
    rel = Relationship.find_by(follower_id: params[:follower_id], followed_id: params[:followed_id])
    rel.destroy
    redirect_to root
  end

end
