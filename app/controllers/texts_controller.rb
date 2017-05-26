class TextsController < ApplicationController

  before_filter :basic_auth, only: [:new, :edit, :manage, :destroy]

  def new
    @text = Text.new
  end
  
  def create
     @text = Text.new(text_params)
     if @text.save!
       redirect_to @text
     else
     end
  end

  def edit
    @text = Text.find(params[:id])
  end

  def index
  end
  
  def show
    @text = Text.find(params[:id])
  end
  
  def manage
    @texts = Text.all
  end
  
  def destroy
    @text = Text.find(params[:id])
    if @text.delete
     flash[:success] = "deleted"
    end
    redirect_to request.referer
  end
  
      private
      
        def text_params
          params.require(:text).permit(:title, :content, :image)
        end
 
        def basic_auth
          authenticate_or_request_with_http_basic do |user,pass|
            user == "s19930528" && "s19930528"
          end
        end
end
