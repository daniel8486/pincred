class UsersBackoffice::ProductsController < UsersBackofficeController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
   # GET /products
   # GET /products.json
    def index
     @products = Product.all
    end

  # GET /products/1
  # GET /products/1.json
     def show
     end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
      if @product.save
        redirect_to users_backoffice_products_path, notice: "Produto Criado com Sucesso !"
      else
        render :new
      end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
      if @product.update(product_params)
        redirect_to users_backoffice_products_path, notice: "Produto excluido com Sucesso !"
      else
        render :edit
      end
   
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    if @product.destroy
     redirect_to users_backoffice_products_path, notice: "Produto excluido com Sucesso !"
    else
    render :index 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :status)
    end


  end