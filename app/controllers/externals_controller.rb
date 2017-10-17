class ExternalsController < ApplicationController
    
    def new
    @ext = External.new
    # @author = Author.new
    # @user = User.new
    end

  def create
    @exts = External.new(ext_params)
    #   if @temp.valid?
         @exts.save
         redirect_to root_path
    #   else
       # 'new'
  end
  
  def index
      @externals = External.all
  end

  private
    def ext_params
     params.require(:external).permit(:name, :passport, :biarthday, :organisation, :org_success)
    end
    
end
