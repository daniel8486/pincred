class UsersBackoffice::ImgsController < UsersBackofficeController
  before_action :set_img, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
    # GET /posts
    # GET /posts.json
    def index
      @imgs = Img.all
    end
  
    # GET /posts/1
    # GET /posts/1.json
    def show
    end
  
    # GET /posts/new
    def new
      @img = Img.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @img = Img.new
        if @img.save
          redirect_to users_backoffice_imgs_index_path, notice: "Posts Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @img.update(img_params)
            redirect_to users_backoffice_imgs_index_path, notice: "Posts Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @img.destroy
        redirect_to users_backoffice_imgs_path, notice: "Posts excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_img
        @img = Img.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def img_params
        params.require(:img).permit(:title, :content,:avatar)
      end
end
