class UsersBackoffice::TicketsController < UsersBackofficeController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /matchings
  # GET /matchings.json
  def index
     @tickets = Ticket.all
  end
    
  # GET /matchings/1
  # GET /matchings/1.json
  def show
  end
 
  # GET /matchings/new
  def new
     @ticket = Ticket.new   
  end
  
   # GET /matchings/1/edit
   def edit
   end
   
   # POST /matchings
   # POST /matchings.json
   def create
     @ticket = Ticket.new(ticket_params)
     if @ticket.save
       redirect_to users_backoffice_tickets_path, notice: "Educação Financeira Cadastrado com Sucesso !"
     else
       render 'new'
     end
   end
   
    # PATCH/PUT /matchings/1
    # PATCH/PUT /matchings/1.json
   def update
      if @ticket.update(ticket_params)
          redirect_to users_backoffice_tickets_path, notice: "Educação Financeira  Atualizado com Sucesso !"
        else
          render :edit
        end
    end
   
     # DELETE /matchings/1
     # DELETE /matchings/1.json
     def destroy
      if @ticket.destroy
        redirect_to users_backoffice_tickets_path, notice: "Educação Financeira  excluido com Sucesso !"
      else
        render :index
      end
    
    end 
   
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:title,:description)
    end

end