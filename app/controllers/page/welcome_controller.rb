class Page::WelcomeController < PageController
    def index
      @abouts = About.all
      @contents = Content.all
    end
    
  end
  