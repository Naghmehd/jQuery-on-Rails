class CommentsController < ApplicationController
  def index
    @comments = Comment.new
  end

  def show
    comment = find_comment_by_id

    if comment
      @comment = comment
    else
      render_not_found
    end
  end
  private

  def find_comment_by_id
    Comment.find(params['id'].to_i)
  end
end
