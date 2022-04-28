class Members::IdeasController < ApplicationController

# 投稿一覧画面（すべての投稿について）
  def index
    @my_ideas = Idea.all
    @idea = Idea.new
    
    # @my_idea = current_member.ideas
    
  end

# 投稿詳細画面(1件の投稿について)
  def show
    @comment = Comment
    @idea = Idea.find(params[:id])
    @member = Member.find(@idea.member_id)
    @ideas = @member.ideas
  end

# 投稿編集画面（投稿者が編集する画面）
  def edit
  end

# アイデア投稿
  def create
    @idea =Idea.new(idea_params)
    @idea.member_id = current_member.id
    if @idea.save!
      redirect_to members_ideas_path, notice: "You have created book successfully."
    else
      @ideas = Idea.all
      @member = current_member
      render :index
    end
  end

# 更新
   def update
    @idea = Idea.find(params[:id])
    if @idea.update(idea_params)
    redirect_to idea_path(@idea), notice: "You have update book successfully."
    else
     render :edit
    end
   end

# 削除
  def destroy
    idea = Idea.find(farams[:id])
    if idea.member == current_member
      idea.destroy
      redirect_to  members_ideas_path
    else
      render :index
    end
  end

private

  def idea_params
    params.require(:idea).permit(:idea_detail, :title, :category_id, :idea_image )
  end


end
