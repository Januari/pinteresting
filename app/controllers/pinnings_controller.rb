class PinningsController < ApplicationController
  before_action :set_pinning, only: [:show, :edit, :update, :destroy]

  
  def index
    @pinnings = Pinning.all
  end

   def show
  end

  def new
    @pinning = Pinning.new
  end

  def edit
  end

  def create
    @pinning = Pinning.new(pinning_params)
 
      if @pinning.save
         redirect_to @pinning, notice: 'Pinning was successfully created.' 
      else
         render action: 'new' 
    end
  end

  def update
    
      if @pinning.update(pinning_params)
         redirect_to @pinning, notice: 'Pinning was successfully updated.' 
     else
         render action: 'edit'         
      end
  end
 
  def destroy
    @pinning.destroy
    redirect_to pinnings_url 
  
  end

  private
    
    def set_pinning
      @pinning = Pinning.find(params[:id])
    end

    def pinning_params
      params.require(:pinning).permit(:description)
    end
end
