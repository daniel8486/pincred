class Page::ScrsController < PageController
  def index
    @scrs = Scr.all
    @contents = Content.all
  end
end
