class Members::CommentsController < ApplicationController

  def create
    @idea = Idea.find(params[:idea_id])
    comment = @idea.comments.new(comment_params)
    comment.member_id = current_member.id
    if comment.save
    redirect_to members_idea_path(@idea)
    else
      render 'members/ideas/show'
    end
  end

  def destroy
    idea = Idea.find(params[:idea_id])
    Comment.find(params[:id]).destroy
    redirect_to  members_idea_path(idea)
  end
private

  def comment_params
    params.require(:comment).permit(:comment_detail)
  end


end
