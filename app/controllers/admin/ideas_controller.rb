class Admin::IdeasController < ApplicationController
  def index
    @my_ideas = Idea.all
    # byebug
    # @member = Member.find(params[:id])
    # deleted_atがnilであれば論理削除していないので、
    # 下記のように書くと論理削除した投稿を除いて一覧表示してくれる
    # @ideas = Idea.where(deleted_at: nil)
    # render json: @ideas, status:200
  end

  def destroy
    # データを消さずにdeleted_atカラムに「削除した日付」を記録し削除したことにする(論理削除)
    @idea.update!(deleted_at: DateTime.now)
    render json: {messages: ["削除しました"]}, status:200
  end

  def show

  end

end

