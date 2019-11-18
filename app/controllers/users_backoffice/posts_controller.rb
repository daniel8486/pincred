class UsersBackoffice::PostsController < UsersBackofficeController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!
    # GET /posts
    # GET /posts.json
    def index
      @posts = Post.all
    end
  
    # GET /posts/1
    # GET /posts/1.json
    def show
    end
  
    # GET /posts/new
    def new
      @post = Post.new
    end
  
    # GET /abouts/1/edit
    def edit
    end
  
    # POST /abouts
    # POST /abouts.json
    def create
      @post = Post.new(post_params)
        if @post.save
          redirect_to users_backoffice_posts_index_path, notice: "Posts Criado com Sucesso !"
        else
          render :new
        end
    end
  
    # PATCH/PUT /abouts/1
    # PATCH/PUT /abouts/1.json
    def update
        if @post.update(post_params)
            redirect_to users_backoffice_posts_index_path, notice: "Posts Criado com Sucesso !"
          else
            render :edit
          end
    end
  
    # DELETE /abouts/1
    # DELETE /abouts/1.json
    def destroy
      if @post.destroy
        redirect_to users_backoffice_posts_path, notice: "Posts excluido com Sucesso !"
      else
        render :index
      end
    
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:title, :text, :status)
  
      end
end
