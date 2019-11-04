class UsersBackoffice::PrsasController < UsersBackofficeController
 before_action :set_prsa, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @prsas = Prsa.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @prsa = Prsa.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @prsa = Prsa.new(prsa_params)
        if @prsa.save
          redirect_to users_backoffice_prsas_index_path, notice: "PRSA Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @prsa.update(prsa_params)
            redirect_to users_backoffice_prsas_index_path, notice: "PRSA Atualizado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @prsa.destroy
        redirect_to users_backoffice_prsas_path, notice: "PRSA excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_prsa
        @prsa = Prsa.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def prsa_params
        params.require(:prsa).permit(:title, :content )
  
      end
end
