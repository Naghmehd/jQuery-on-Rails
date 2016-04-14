class DownvotesController < ApplicationController
  def index
    @downvote = Downvote.all
  end

  def create_downvote
    @downvote = Downvote.new
    @downvote.link = Link.find(params[:link_id])
    @downvote.save
    

    render json: { scores: @downvote.link.scores }
  end
end
