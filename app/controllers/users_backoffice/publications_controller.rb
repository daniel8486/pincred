class UsersBackoffice::PublicationsController < UsersBackofficeController
  
  before_action :set_publication, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end

  # POST /publications
  # POST /publications.json
   def create
    @publication = Publication.new(publication_params)
      if @publication.save
        redirect_to users_backoffice_publications_path, notice: 'Publication was successfully created.' 
      else
        render :new
      end
    end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
   def update
      if @publication.update(publication_params)
        redirect_to users_backoffice_publications_path, notice: 'Publication was successfully updated.' 
      else
       render :edit 
      end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    if @publication.destroy 
      redirect_to users_backoffice_publications_path, notice: 'Publication was successfully destroyed.' 
    else
      render :index 
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:title, :content,:status,{documents:[]})
    end

end
