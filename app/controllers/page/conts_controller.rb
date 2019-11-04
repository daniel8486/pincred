class Page::ContsController < PagesController
  def index
    @contents = Content.all
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
    @contents = Content.all
  end
  
  def create
    @contact = Contact.new(params_contact)
    if @contact.save()
      redirect_to page_conts_index_path, notice: "Contato Criado com Sucesso !"
      else
      render :new
     end
   
  end

  
  private


 def set_contact
  @contact = Contact.find(params[:id])
 end


 def params_contact
   params.require(:contact).permit(:description_name,:rg,:cpf,:email,:phone,:address,:title,:content)
 end

end
