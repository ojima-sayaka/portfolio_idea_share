class Members::GoodController < ApplicationController
  def index
    @ideas = Idea.all
    @good_ideas = @ideas.find(goods)
  end

  def create
    @idea = Idea.find(params[:idea_id])
    @good = @idea.goods.new(member_id: current_user.id)
    good.save
    flash[:success] = "GOOD"
    redirect_to request.referer
  end

  def destroy
    @idea = Idea.find(params[:idea_id])
    @good = current_user.favorites.find_by(member_id: @idea.id)
    good.destroy
    redirect_to request.referer
  end

  def favorites
    @member = Member.find(params[:id])
    @goods = Good.where(member_id: @member.id).pluck(:idea_id)
    @good_ideas = Idea.find(goods)
  end
end
