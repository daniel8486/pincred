class Page::PrsasController < PageController
       def index
        @prsas = Prsa.all
        @contents = Content.all
        end
end
