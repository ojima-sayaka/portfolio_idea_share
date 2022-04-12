class Admin::MemberController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end


  def update
     @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to admin_member_path(@member), notice: "You have updated user successfully."
    else
      render :index
    end
  end


end

private

# def member_params
#   params.require(:member).permit(:name, :?, :?, :email)

# end