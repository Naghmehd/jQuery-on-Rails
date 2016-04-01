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
  end

  def create # link

    Link.create(user_id: params[:link][:user_id],
                title: params[:link][:title],
                body:params[:link][:body])

    redirect_to '/links'
  end


  private

  def find_link_by_id
    Link.find { |l| l.id == params[:use.id].to_i }
  end

  def render_not_found
    render template: 'links/not_found.html.erb'
  end
end
