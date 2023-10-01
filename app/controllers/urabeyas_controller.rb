class UrabeyasController < ApplicationController
  def new
    @urabeya = Urabeya.new
  end
  
  def create
    @urabeya = Urabeya.new(urabeya_params)
    if @urabeya.save
      redirect_to urabeyas_path
    else
      render :new
    end
  end

  def index
    @urabeyas = Urabeya.all.order(:number)
    @urabeya = Urabeya.new
  end
  
  def edit
    @urabeya = Urabeya.find(params[:id])
  end

  def update
    @urabeya = Urabeya.find(params[:id])
    if @urabeya.update(urabeya_params)
      redirect_to urabeyas_path
    else
      render :edit
    end
  end
  
  def destroy
    @urabeya = Urabeya.find(params[:id])
    @urabeya.destroy
    redirect_to urabeyas_path
  end
  
  private
  def urabeya_params
    params.require(:urabeya).permit(:title, :teacher, :number, :class_name, :class_url)
  end
end
