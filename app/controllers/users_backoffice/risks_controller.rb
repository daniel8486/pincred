class UsersBackoffice::RisksController < UsersBackofficeController
 before_action :set_risk, only: [:show, :edit, :update, :destroy]
 #before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @risks = Risk.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @risk = Risk.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @risk = Risk.new(risk_params)
        if @risk.save
          redirect_to users_backoffice_risks_index_path, notice: "Taxa de Risco Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @risk.update(risk_params)
            redirect_to users_backoffice_risks_index_path, notice: "Taxa de Risco Atualizado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @risk.destroy
        redirect_to users_backoffice_risks_path, notice: "Taxa de Risco excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_risk
        @risk = Risk.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def risk_params
        params.require(:risk).permit(:title, :content )
  
      end
end
