class Members::GoodController < ApplicationController
  def index
  end
  
  def favorites
    @member = Member.find(params[:id])
    @goods = Good.where(member_id: @member.id).pluck(:idea_id)
    @good_ideas = Idea.find(goods)
  end
end
