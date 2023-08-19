class EquipmentsController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    redirect_to equipments_path
  end

  def index
    @equipments = Equipment.all
    @equipment = Equipment.new
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    @equipment.update(equipment_params)
    redirect_to equipments_path
  end

  def destroy
    equipment = Equipment.find(params[:id])
    equipment.destroy
    redirect_to equipments_path
  end

  private
  def equipment_params
    params.require(:equipment).permit(:name, :image, :detail)
  end

end
