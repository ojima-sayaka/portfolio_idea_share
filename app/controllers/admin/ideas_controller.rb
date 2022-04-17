class Admin::IdeasController < ApplicationController
  def index
    @idea = Idea.all
  end

  def show
  end
end
