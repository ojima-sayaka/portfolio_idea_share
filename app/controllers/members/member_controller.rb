class Members::MemberController < ApplicationController

# 会員一覧
  def index
    @members = Member.all
  end

# 会員詳細（会員が投稿した物のみ表示）
  def show
    @idea = Idea.find(params[:id])
    @idea
  end

# 会員編集画面
  def edit
    @member = Member.find(params[:id])
  end

  def update
   @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_member_path(@member), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  private

  def member_params
    params.require(:member).permit(:profile_image, :name, :introduction)
  end

end
