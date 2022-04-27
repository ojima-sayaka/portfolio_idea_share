class Members::MemberController < ApplicationController
    # before_action :set_user, :only => [:show, :favorites, :comments]
  before_action :set_member, :only => [:show, :goods, :comments, :destroy]

# 会員一覧
  def index
    @members = Member.all
  end

# 会員詳細（会員が投稿した物のみ表示）
  def show
    # @idea = Idea.find(params[:id])
    @member = Member.find(params[:id])
    @ideas = @member.ideas

  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    flash[:notice] = 'ユーザーを削除しました。'
    redirect_to :root #削除に成功すればrootページに戻る
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

   private
  def set_member
     @member = Member.find_by(:id => params[:id])
  end

end
