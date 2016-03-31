class LinksController < ApplicationController
  def index
     @links = link.paginate(:page => params[:page], :per_page => 25)
    #  render template: "/links/index.html.erb"
  end

  def show #Get
    link = find_link_by_id

    if link
        @link = link
        # render template: 'links/show.html.erb'
      else
        render_not_found
    end
  end
  private

  def find_link_by_id
    link.find(params['id'].to_i)
  end

  def render_not_found
    render template: "links/not_found.html.erb"
  end
end
