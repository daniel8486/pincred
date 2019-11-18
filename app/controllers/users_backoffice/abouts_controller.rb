class UsersBackoffice::AboutsController < UsersBackofficeController
 before_action :set_about, only: [:show, :edit, :update, :destroy]
 #before_action :authenticate_user!
  
    # GET /abouts
    # GET /abouts.json
    def index
      @abouts = About.all
    end
  
    # GET /abouts/1
    # GET /abouts/1.json
    def show
    end
  
    # GET /abouts/new
    def new
      @about = About.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @about = About.new(about_params)
        if @about.save
          redirect_to users_backoffice_abouts_index_path, notice: "Conteudo Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @about.update(about_params)
            redirect_to users_backoffice_abouts_index_path, notice: "Conteudo Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @about.destroy
        redirect_to users_backoffice_abouts_path, notice: "Conteudo excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_about
        @about = About.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def about_params
        params.require(:about).permit(:description, :text, :status)
  
      end
 
    end







