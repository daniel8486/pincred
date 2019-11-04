class Site::WelcomeController < SiteController
  def index
    @banners = Banner.all
    @posts = Post.all
    @imgs = Img.all
    @imagems = Imagem.all
    @credits = Credit.all
    @taxs = Tax.all
    @outs = Out.all
    @contents = Content.all
  end
end
