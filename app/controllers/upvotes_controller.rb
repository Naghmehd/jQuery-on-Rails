class UpvotesController < ApplicationController
  def index
    @upvote = Upvote.all
  end

  def create_upvote
    @upvote = Upvote.new
    @upvote.link = Link.find(params[:link_id])
    @upvote.save
    redirect_to :back #@upvote.link
  end
end
