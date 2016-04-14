class UpvotesController < ApplicationController
  def index
    @upvote = Upvote.all
  end

  def create_upvote
    @upvote = Upvote.new
    @upvote.link = Link.find(params[:link_id])
    @upvote.save

    render json: { scores: @upvote.link.scores }
  end
end
