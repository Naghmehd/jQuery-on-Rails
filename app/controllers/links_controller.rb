class LinksController < ApplicationController
  def index
    # @links = Link.all
    @links = Link.all.sort_by { |l| [l.scores, l.title] }.reverse!
  end

  def show # Get
    link = Link.find(params[:id])
    if link
      @link = link
    else
      render_not_found
    end

    def create # link

      Links.push(
        link.new(params[:user_id], params[:title], params[:body], true)
      )

      redirect_to '/links'
    end
  end

  private

  def render_not_found
    render template: 'links/not_found.html.erb'
  end
end
