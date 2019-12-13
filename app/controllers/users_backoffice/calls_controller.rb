class UsersBackoffice::CallsController < UsersBackofficeController
  before_action :set_call, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /matchings
  # GET /matchings.json
  def index
     @calls = Call.all
  end
    
  # GET /matchings/1
  # GET /matchings/1.json
  def show
  end
 
  # GET /matchings/new
  def new
     @call = Call.new   
  end
  
   # GET /matchings/1/edit
   def edit
   end
   
   # POST /matchings
   # POST /matchings.json
   def create
     @call = Call.new(call_params)
     if @call.save
       redirect_to users_backoffice_calls_path, notice: "Educação Financeira Cadastrado com Sucesso !"
     else
       render 'new'
     end
   end
   
    # PATCH/PUT /matchings/1
    # PATCH/PUT /matchings/1.json
   def update
      if @call.update(call_params)
          redirect_to users_backoffice_calls_path, notice: "Educação Financeira  Atualizado com Sucesso !"
        else
          render :edit
        end
    end
   
     # DELETE /matchings/1
     # DELETE /matchings/1.json
     def destroy
      if @call.destroy
        redirect_to users_backoffice_calls_path, notice: "Educação Financeira  excluido com Sucesso !"
      else
        render :index
      end
    
    end 
   
    private
    # Use callbacks to share common setup or constraints between actions.
    def call_ticket
      @call = Call.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_params
      params.require(:call).permit(:title,:description)
    end

end
