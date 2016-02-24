class FundrrsController < ApplicationController
  def index
  end
  
  def new
    @fundrr = Fundrr.new
  end
  
  def create
    @fundrr = Fundrr.new(project_params)
      if @fundrr.save
        redirect_to @fundrr, notice: "Fundrr successfully created"
      else
        render :new
      end
  end
  
  def show
    @fundrr = Fundrr.find(params[:id])
  end
  
  
  private
    def project_params
      params.require(:fundrr).permit(:title, :description, :start_date, :duration, :fundrr_goal)
    end
end