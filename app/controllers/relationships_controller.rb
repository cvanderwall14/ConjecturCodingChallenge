class RelationshipsController < ApplicationController

  def create

  end

  def destroy
    user = Relationship.find(params[:id]).followed
    current_user.unfollow(user)
    redirect_to user
  end

end
