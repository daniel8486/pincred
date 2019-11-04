class Page::RisksController < PageController
       def index
        @risks = Risk.all
        @contents = Content.all
        end 
end
