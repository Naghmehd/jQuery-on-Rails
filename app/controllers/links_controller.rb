class LinksController < ApplicationController

  def index
    all_links = Link.all.sort_by { |l| [l.scores, l.title] }.reverse!

    current_page = params[:page].to_i
    if current_page <= 1
      start_number = 0
      end_number = 10
    else
      start_number = current_page + 10
      end_number = current_page * 10
    end

    @links = all_links[start_number..end_number]

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
