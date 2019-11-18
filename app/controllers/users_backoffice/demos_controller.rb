class UsersBackoffice::DemosController < UsersBackofficeController
 before_action :set_demo, only: [:show, :edit, :update, :destroy]
 #before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @demos = Demo.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @demo = Demo.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @demo = Demo.new(demo_params)
        if @demo.save
          redirect_to users_backoffice_demos_index_path, notice: "Demonstrativos Financeiros Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @demo.update(demo_params)
            redirect_to users_backoffice_demos_index_path, notice: "Demonstrativos Financeiros Atualizado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @demo.destroy
        redirect_to users_backoffice_demos_path, notice: "Demonstrativos Financeiros excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_demo
        @demo = Demo.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def demo_params
        params.require(:demo).permit(:title, :content )
  
      end
end
