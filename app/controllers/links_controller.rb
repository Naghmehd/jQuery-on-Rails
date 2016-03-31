class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def show #Get
    link = Link.find(params[:id])
    if link
        @link = link
    else    
        render_not_found
    end
  end


  private

  def render_not_found
    render template: "links/not_found.html.erb"
  end
end
