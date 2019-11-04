class Page::WhoamisController < PageController
  def index
    @whos = Who.all
    @contents = Content.all
  end
end
