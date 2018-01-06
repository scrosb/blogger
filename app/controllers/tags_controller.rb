class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end


  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = tag.name
    @tag.destroy
    redirect_to tag_path
    flash.notice = "Article '#{@tag}' DELETED HOMIE!"
  end


end
