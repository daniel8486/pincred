class Page::ComplaintsController < PagesController
    def index
        @contents = Content.all
        @complaints = Complaint.all
      end
    
      def new
        @complaint = Complaint.new
        @contents = Content.all
      end
      
      def create
        @complaint = Complaint.new(params_complaint)
        if @complaint.save()
          redirect_to page_complaints_index_path, notice: "Denúncia Enviada com Sucesso !"
          else
          render :new
         end
       
      end
    
      
      private
    
    
     def set_complaint
      @complaint = Complaint.find(params[:id])
     end
    
    
     def params_complaint
       params.require(:complaint).permit(:description_name,:rg,:cpf,:email,:phone,:address,:title,:content)
     end
end
