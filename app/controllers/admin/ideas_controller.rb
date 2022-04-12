class Admin::IdeasController < ApplicationController
  def index
    @idea = idea.all
  end

  def show
  end
end
