class UsersBackoffice::FeesController < UsersBackofficeController
 before_action :set_fee, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @fees = Fee.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @fee = Fee.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
        @fee = Fee.new(fees_params)
        if @fee.save
          redirect_to users_backoffice_fees_index_path, notice: "FEES Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @fees.update(fees_params)
            redirect_to users_backoffice_fees_index_path, notice: "FEES Atualizado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @fee.destroy
        redirect_to users_backoffice_fees_path, notice: "FEES excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_fee
        @fee = Fee.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def fees_params
        params.require(:fee).permit(:title, :content )
  
      end
end
