class DownvotesController < ApplicationController
  def index
    @downvote = Downvote.all
  end

  def create_downvote
    @downvote = Downvote.new
    @downvote.link = Link.find(params[:link_id])
    @downvote.save
    redirect_to :back
  end
end
