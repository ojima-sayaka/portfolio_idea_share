class Members::IdeasController < ApplicationController

# 投稿一覧画面（すべての投稿について）
  def index
    @ideas = Idea.all

  end

# 投稿詳細画面(1件の投稿について)
  def show
    @idea = Idea
    @member = Member.find(params[:id])
    @ideas = @member.ideas
  end

# 投稿編集画面（投稿者が編集する画面）
  def edit
  end

# 更新
  def updata
  end



end
