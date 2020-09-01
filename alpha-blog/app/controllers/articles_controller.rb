class ArticlesController < ApplicationController
     
  def show
      @article = Article.find(params[:id])
  end 
  
  def index
    @articles = Article.all
  end
  
  def new
    #instatiate article before creating it with form
    @article = Article.new
  end 
  
  def create
    #create new instance and allow form info to save
    @article = Article.new(params.require(:article).permit(:title, :description))
    #save form information to database
   if @article.save
     #display sucess notice
     flash[:notice] = "Article was saved sucessfully!!"
     redirect_to @article
   else
     render 'new'
   end
  end 

end
