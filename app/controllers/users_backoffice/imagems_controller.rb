class UsersBackoffice::ImagemsController < UsersBackofficeController
  before_action :set_imagem, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
    # GET /posts
    # GET /posts.json
    def index
      @imagems = Imagem.all
    end
  
    # GET /posts/1
    # GET /posts/1.json
    def show
    end
  
    # GET /posts/new
    def new
      @imagem = Imagem.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @imagem = Imagem.new
        if @imagem.save
          redirect_to users_backoffice_imagems_index_path, notice: "Posts Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @imagem.update(imagem_params)
            redirect_to users_backoffice_imagems_index_path, notice: "Posts Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @imagem.destroy
        redirect_to users_backoffice_imagems_path, notice: "Posts excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_imagem
        @imagem = Imagem.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def imagem_params
        params.require(:imagem).permit(:title, :content,:avatar)
      end
end
