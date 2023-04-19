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
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def equipment_params
    params.require(:equipment).permit(:name, :image, :detail)
  end

end
